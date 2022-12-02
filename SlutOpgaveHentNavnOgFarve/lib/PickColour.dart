import 'package:flutter/material.dart';
import 'package:slutopgavehentnavnogfarve/AddMember.dart';

class PickColour extends StatefulWidget {
  @override
  _PickColourState createState() => _PickColourState();
}

class _PickColourState extends State<PickColour> {
  _PickColourState({this.colour});
  Color? colour;

  String? value1;
  String? value2;
  String? value3;

  String? getColor;

  final items = ['00', '10', '20', '30', '40', 'A0', 'B0', 'C0', 'FF'];

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlutOpgavenHentnavnOgFarve'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              familyBrain.getFamilyMemberType() + ' Colour',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: colour),
                ),
              ),
            ),
            Row(
              children: [
                DropdownButton<String>(
                  value: value1,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => value1 = value),
                ),
                DropdownButton<String>(
                  value: value2,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => value2 = value),
                ),
                DropdownButton<String>(
                  value: value3,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => value3 = value),
                ),
              ],

            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                setState(() {
                  colour = Color(0xFF9010C0);

                });
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

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}