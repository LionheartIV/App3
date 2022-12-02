// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slutopgavehentnavnogfarve/AddMember.dart';
import 'package:slutopgavehentnavnogfarve/PickColour.dart';

void main() => runApp(SlutOpgave());

class SlutOpgave extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatefulWidget {
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  List<String> nameList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlutOpgavenHentnavnOgFarve'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Get ones Name and Colour",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddMember(),
                  ),
                );
              },
              child: Text(
                'GET ONES NAME',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Row(
              children: [
                Visibility(
                  visible: !familyBrain.buttonShouldBeVisible(),
                  child: Text(
                    familyBrain.getFamilyMemberType(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Visibility(
                  visible: familyBrain.buttonShouldBeVisible(),
                  child: Text(
                    familyBrain.getFamilyMemberType() + ' : ' + familyBrain.getFamilyMemberName(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickColour(),
                  ),
                );
              },
              child: Text(
                'GET ONES COLOUR',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}