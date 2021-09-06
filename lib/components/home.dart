import 'package:flutter/material.dart';
import 'package:test_ben/app/list.dart';
import 'package:test_ben/components/footer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 17.0),
              child: Center(
                child: Text(
                  'Find a doctor.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Center(
                child: Text(
                  'thanks for taking a good minute to submit your relation ship info',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40.0, left: 40.0, top: 40.0),
              child: Center(
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'what doctor tou want',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[50],
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListDoctor()),
                  );
                },
                child: Container(
                  height: 50,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(
                          Icons.search_rounded,
                          size: 15.0,
                        ),
                      ),
                      Center(
                        child: Text(
                          'FIND DOCTORS NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
