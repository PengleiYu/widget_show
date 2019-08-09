import 'package:flutter/material.dart';
import 'package:widget_shower/test_list.dart';
import 'package:widget_shower/widget_shower.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Container(
        child: LVTest(),
      ),
    ),
  ));
}

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var decorations = [
      TextDecoration.lineThrough,
      TextDecoration.none,
      TextDecoration.overline,
      TextDecoration.underline
    ];
    return WidgetShower(
      list: decorations,
      call: (it) => Text(
        'HelloWorld',
        style: TextStyle(decoration: it),
      ),
    );
  }
}
