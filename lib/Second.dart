import 'package:flutter/material.dart';
import 'package:flutter_app_counterapp/myCounter.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<MyCounter>(
        builder: (context,mycounter,child){
      return Text('${mycounter.counter}');
    },
    ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Consumer<MyCounter>(
              builder: (context, mycounter, child) {
                return Text('${mycounter.counter}');
              },
            ),
          ),
          Consumer<MyCounter>(
            builder: (context, mycounter, child) {
              return RaisedButton(
                child: Text('Increase'),
                onPressed: () {
                  mycounter.inc();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
