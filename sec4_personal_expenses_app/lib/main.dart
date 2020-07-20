import 'package:flutter/material.dart';
import 'widgets/userTransactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Container(
              child: Text('CHART'),
              width: double.infinity,
            ),
            elevation: 5,
          ),
          UserTransactions()
        ],
      ),
    );
  }
}
