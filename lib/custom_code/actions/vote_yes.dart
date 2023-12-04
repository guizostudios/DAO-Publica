// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> voteYes(
  String contractAddress,
  String className,
  String id,
  String vote,
) async {
  final bigIntId = BigInt.from(int.parse(id));
  final vote = BigInt.from(int.parse(vote));
  final endDate = BigInt.from(int.parse(endDate));
  final txHash = await blockchainTransaction(
    contractAddress,
    className,
    'voteYes',
    [bigIntId],
    [vote],
  );
  return txHash;
}
