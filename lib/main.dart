import 'package:flutter/material.dart';
import 'package:flutter_ethereum/contract_linking.dart';
import 'package:flutter_ethereum/helloUI.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Inserting Provider as a parent of HelloUI()
    return ChangeNotifierProvider<ContractLinking>(
      create: (_) => ContractLinking(),
      child: MaterialApp(
        title: "Hello World",
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.cyan[400]
          ),
        home: HelloUI(),
      ),
    );
  }
}
