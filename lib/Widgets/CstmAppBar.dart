// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CstmAppBar extends StatelessWidget {
  final String title;

  const CstmAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Color(0xFF688D2D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.0),
        ),
      ),
    );
  }
}
