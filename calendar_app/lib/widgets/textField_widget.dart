import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left:50, right: 50),
      child:TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search),
        labelText: 'Search',
        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
        contentPadding: EdgeInsets.only(left: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),);
  }
}
