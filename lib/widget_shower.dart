import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef ShowerCall<E> = Widget Function(E t);

class WidgetShower<T> extends StatelessWidget {
  final List<T> list;
  final double width;
  final double height;
  final List<String> infos;
  final ShowerCall<T> call;
  final Color color;

  const WidgetShower(
      {Key key,
      @required this.list,
      this.width = 110,
      this.height = 110 * 0.618,
      this.infos,
      @required this.call,
      this.color = Colors.cyanAccent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var li = List.generate(list.length, (i) {
      var child = Container(
        margin: EdgeInsets.all(8),
        width: width,
        height: height,
        color: color,
        child: call(list[i]),
      );
      return Column(
        children: <Widget>[
          child,
          Text(infos != null ? infos[i] : list[i].toString().split(".")[1]),
        ],
      );
    });
    return Wrap(children: li);
  }
}
