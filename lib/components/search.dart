import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 35.0, left: 50.0, right: 50.0, bottom: 30.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Valeur de la recherche',
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 5.0, end: 3.0),
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        autofocus: false,
        cursorColor: Colors.white,
      ),
    );
  }
}
