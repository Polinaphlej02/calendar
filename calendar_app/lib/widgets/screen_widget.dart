import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child:
          Padding(
            padding:EdgeInsets.only(right: 30),
            child:Text("May 2024", style: TextStyle(
          fontFamily: "Mulish-VariableFont_wght",
          fontWeight: FontWeight.w900,
          fontSize: 20,
          color: Colors.white,
        ),
        ),)
        ),
        backgroundColor: const Color.fromARGB(255, 152, 107, 90),
        leading: Padding(
            padding:EdgeInsets.only(left: 30),
            child:IconButton
          (onPressed: (){}, 
          icon: Icon(Icons.menu, color: Colors.white, size: 30,),
          )
      ),),
      body: Column(
        children: [

        ],
      ),
    );
  }
}