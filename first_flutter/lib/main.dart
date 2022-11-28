import 'package:flutter/material.dart';

// void main() {
//   TestClass tc = TestClass(id: 1000, name: "Phil");
//
//   print('Id:  ${tc.id}');
//   print("Name: " + tc.name.toString());
// }
//
// class TestClass {
//   int? _id;
//   String? _name;
//
//   int? get id => _id;
//   String? get name => _name;
//
//   set id(int? value) {
//     _id = value;
//   }
//   set name(String? value) {
//     _name = value;
//   }
//
//   TestClass({ int? id,String? name}){
//     this.id = _id;
//     this.name = _name;
//   }
// }
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expanded Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Expanded Widget'),
            ),
            body: Column(children: [
              Container(
                  height: 200,
                  color: Colors.green[600],
                  child: const Center(
                      child: Text('200', style: TextStyle(fontSize: 50)))),

              Container(
                  height: 150,
                  color: Colors.red[600],
                  child: const Center(
                      child:
                      Text('Expanded', style: TextStyle(fontSize: 50)))),

              Container(
                  height: 400,
                  color: Colors.blue[600],
                  child: const Center(
                      child: Text('400', style: TextStyle(fontSize: 50)))),
            ])
        )
    );
  }
}
