// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imgUrl;
  final String label;
  const ImageCard({super.key, required this.imgUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xFFE6EFD7),
            ),
            // child: Image.network(
            //   "",
            // ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: NetworkImage(
                    imgUrl,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xFFE6EFD7),
          ),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
