import 'package:calendar_app/themes/constants.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: sideBarBrown,
    );
  }
}
