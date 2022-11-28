import 'package:flutter/material.dart';

void main() {
  TestClass tc = TestClass(1000, "Philip");

  print('Id:  ${tc.id}');
  print("Name: " + tc.name);
}

class TestClass {
  int id;
  String name;

  TestClass(this.id, this.name);

}
