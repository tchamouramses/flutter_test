import 'package:flutter/material.dart';
import 'package:test_ben/app/elements.dart';
import 'package:test_ben/components/components.dart';
import 'package:test_ben/components/search.dart';

class ListDoctor extends StatefulWidget {
  @override
  _ListDoctorState createState() => _ListDoctorState();
}

class _ListDoctorState extends State<ListDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          children: [
            Text(
              'Resultat de recherche',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'mini description du text titre',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Search(),
          Composants(),
        ],
      ),
    );
  }
}
