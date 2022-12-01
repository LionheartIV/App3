import 'package:slutopgavehentnavnogfarve/AddMember.dart';
import 'package:slutopgavehentnavnogfarve/Family.dart';

class FamilyBrain {
  int _listItemNumber = 0;

  final List<Family> _familyBank = [];

  void addFamilyMember(String familyMemberType, String familyMemberName) {
    return _familyBank.add(Family(familyMemberType, familyMemberName));
  }

  String getFamilyMemberName() {
    if (_familyBank.isEmpty) {
      return 'Here comes the names';
    } else {
      return _familyBank[0].familyMemberName;
    }
  }

  String getFamilyMemberType() {
    _listItemNumber = _familyBank.length - 1;
    if (_familyBank.isEmpty) {
      return 'Here comes the names';
    } else {
      return _familyBank[0].familyMemberType;
    }
  }

  bool buttonShouldBeVisible() {
    if (_familyBank.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  int returnListLength(){
    return _familyBank.length-1;
  }
}