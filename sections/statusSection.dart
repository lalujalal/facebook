import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/Widgets/avathar.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avathar(displayImage: dulquer4,statusIndicator: false),
      title: TextField(

        decoration: InputDecoration(
          hintText: "whats on your mind ?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder:  InputBorder.none,
          disabledBorder:  InputBorder.none,

        ),
      ),
    );
  }
}
