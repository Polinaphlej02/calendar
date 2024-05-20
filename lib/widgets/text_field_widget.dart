import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          labelText: 'Search',
          labelStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
          contentPadding: const EdgeInsets.only(left: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
