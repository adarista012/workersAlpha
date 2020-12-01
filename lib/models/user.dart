import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String lastName;
  final int phoneNumber;
  final String image;
  final double lat;
  final double long;

  User(
      {@required this.id,
      @required this.name,
      @required this.lastName,
      @required this.phoneNumber,
      this.image,
      this.lat,
      this.long});
}
