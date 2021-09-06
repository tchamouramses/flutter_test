import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ben/components/components.dart';

class Composants extends StatefulWidget {
  @override
  _ComposantsState createState() => _ComposantsState();
}

class _ComposantsState extends State<Composants> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonComponent(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
              text: Text(
                'calendar',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              color: Colors.white,
              margin: 10.0,
            ),
            ButtonComponent(
              icon: Icon(Icons.card_giftcard),
              text: Text('Carte'),
              color: Colors.blue,
              margin: 10.0,
            ),
            ButtonComponent(
              icon: Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              text: Text(
                'telephoner',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              color: Colors.white,
              margin: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
