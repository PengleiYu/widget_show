import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LVTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => Container(
        width: 100,
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        color: Colors.green,
        height: 61.8,
        child: Text('Hello'),
      ),
    );
  }
}
