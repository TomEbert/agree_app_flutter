import 'package:flutter/material.dart';
import 'package:flutter_app_test/models/are_pattern.dart';

class AREPatternDetailView extends StatelessWidget {

  // Stored Properties
  final AREPattern arePattern;

  // Initializer
  const AREPatternDetailView({this.arePattern});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${arePattern.patternName}"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}