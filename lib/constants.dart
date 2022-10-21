import 'package:flutter/material.dart';

const kInputDecoration = InputDecoration(
  filled: true,
  icon: Icon(
    size: 25,
    Icons.search_rounded,
    color: Color(0xFF727C83),
  ),
  hintText: 'Search name here',
  hintStyle: TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 14.5,
  ),
  fillColor: Color(0xFFE9EBEC),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    borderSide: BorderSide.none,
  ),
);
