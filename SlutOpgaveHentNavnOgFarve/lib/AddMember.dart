import 'package:flutter/material.dart';
import 'package:slutopgavehentnavnogfarve/Family.dart';
import 'package:slutopgavehentnavnogfarve/FamilyBrain.dart';

FamilyBrain familyBrain = FamilyBrain();

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  String val = "";
  TextEditingController nameController = new TextEditingController();

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
              'Write the name of your.....',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            ListTile(
              title: Text('Mother'),
              leading: Radio(
                value: 'Mother',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Father'),
              leading: Radio(
                value: 'Father',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Cat'),
              leading: Radio(
                value: 'Cat',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Dog'),
              leading: Radio(
                value: 'Dog',
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                  });
                },
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ender a name',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                setState(() {
                  familyBrain.addFamilyMember(val,nameController.text);
                  Navigator.pop(context);
                });
              },
              child: Text(
                'SEND',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}