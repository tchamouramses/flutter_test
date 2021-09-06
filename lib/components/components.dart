import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonComponent extends StatefulWidget {
  Icon icon;
  Text text;
  double margin;
  Color color;
  ButtonComponent({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.margin,
    @required this.color,
  }) : super(key: key);
  @override
  _ButtonComponentState createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: widget.margin),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(widget.color),
          ),
          onPressed: () {},
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.icon,
                widget.text,
              ],
            ),
            height: 60.0,
            width: width / 4,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListTitle extends StatefulWidget {
  ListTitle({Key key}) : super(key: key);

  @override
  _ListTitleState createState() => _ListTitleState();
}

class _ListTitleState extends State<ListTitle> {
  @override
  Widget build(BuildContext context) {
    final List<String> titre = ['All', 'to Flutter', 'by location'];
    return Expanded(
      child: ListView.builder(
        itemCount: titre.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(titre[index]);
        },
      ),
    );
  }
}
