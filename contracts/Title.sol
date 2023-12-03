// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract TitleRegistry is Ownable {
    mapping(address => bool) public isRegistered;
    mapping(address => string) public voterToCity;

    constructor(address initialOwner) 
    Ownable(initialOwner) {}

    function registerVoter(address _voter, string memory _city) external onlyOwner {
        isRegistered[_voter] = true;
        voterToCity[_voter] = _city;
    }
}
