// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./Title.sol";

contract DAO is Ownable, ReentrancyGuard {
    struct Project {
        address payable beneficiary;
        uint256 amountRequested;
        uint256 votes;
        bool executed;
    }

    mapping(uint256 => Project) public projects;
    uint256 public projectsCount;

    TitleRegistry public titleRegistry;
    ERC20 public treasuryToken;

    event ProjectCreated(uint256 projectId, address beneficiary, uint256 amountRequested);
    event Voted(uint256 projectId, address voter, uint256 votes);
    event ProjectExecuted(uint256 projectId, address executor);

    modifier onlyRegisteredVoter() {
        require(titleRegistry.isRegistered(msg.sender), "Not a registered voter");
        require(
            keccak256(abi.encodePacked(titleRegistry.voterToCity(msg.sender))) == keccak256(abi.encodePacked(getCity())),
            "Voter not from this city"
        );
        _;
    }

    modifier onlyProjectVoter(uint256 _projectId) {
        require(projects[_projectId].votes > 0, "No votes for this project");
        require(!projects[_projectId].executed, "Project already executed");
        _;
    }

    modifier onlyProjectBeneficiary(uint256 _projectId) {
        require(msg.sender == projects[_projectId].beneficiary, "Not the project beneficiary");
        _;
    }

    constructor(TitleRegistry _titleRegistry, ERC20 _treasuryToken, address initialOwner) 
    Ownable(initialOwner) {
        titleRegistry = _titleRegistry;
        treasuryToken = _treasuryToken;
    }

    function createProject(address payable _beneficiary, uint256 _amountRequested) external onlyRegisteredVoter nonReentrant {
        uint256 projectId = projectsCount++;
        projects[projectId] = Project(_beneficiary, _amountRequested, 0, false);

        emit ProjectCreated(projectId, _beneficiary, _amountRequested);
    }

    function vote(uint256 _projectId, uint256 _votes) external onlyRegisteredVoter onlyProjectVoter(_projectId) nonReentrant {
        require(treasuryToken.transferFrom(msg.sender, address(this), _votes), "Vote transfer failed");

        projects[_projectId].votes += _votes;

        emit Voted(_projectId, msg.sender, _votes);
    }

    function executeProject(uint256 _projectId) external onlyProjectBeneficiary(_projectId) nonReentrant {
        require(!projects[_projectId].executed, "Project already executed");
        require(projects[_projectId].votes > (treasuryToken.totalSupply() / 4), "Votes not enough");

        projects[_projectId].executed = true;
        projects[_projectId].beneficiary.transfer(projects[_projectId].amountRequested);

        emit ProjectExecuted(_projectId, msg.sender);
    }

    function getCity() public view returns (string memory) {
        return titleRegistry.voterToCity(msg.sender);
    }
}
