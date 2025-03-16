import 'package:flutter/material.dart';

Widget infoText(String title, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: TextStyle(fontSize: 13)),
      Expanded(
        child: Text(
          value,
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          maxLines: 2,
        ),
      ),
    ],
  );
}
