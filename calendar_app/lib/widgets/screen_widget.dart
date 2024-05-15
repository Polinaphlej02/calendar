import 'package:calendar_app/static/colors.dart';
import 'package:calendar_app/widgets/switcher_widget.dart';
import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child:
          Padding(
            padding:EdgeInsets.only(right: 30),
            child:Text("May 2024", style: TextStyle(
          fontFamily: "Mulish-VariableFont_wght",
          fontWeight: FontWeight.w900,
          fontSize: 18,
          color: Colors.white,
        ),
        ),)
        ),
        backgroundColor: CalendarColors.mainBrown,
        leading: Padding(
            padding:EdgeInsets.only(left: 30),
            child:IconButton
          (onPressed: (){}, 
          icon: const Icon(Icons.menu, color: Colors.white, size: 30,),
          )
      ),),
      body: Column(
        children: [
          SwitcherWidget(),
        ],
      ),
    );
  }
}