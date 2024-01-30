import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/app/routes/app_pages.dart';
import 'package:windsorfarma/constants/color.dart';

class BottomNavigationBarView extends StatelessWidget {
  BottomNavigationBarView(
      {required this.currentSelectionIndex, this.onTapFunction});

  final int currentSelectionIndex;
  final Function(int)? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTapFunction,
        currentIndex: currentSelectionIndex,
        backgroundColor: secondaryColor,
        selectedItemColor: whiteColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: whiteColor.withOpacity(0.6),
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  icon: Icon(Icons.home)),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: Icon(Icons.history)),
              label: 'History '),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.ACCOUNT);
                  },
                  icon: Icon(Icons.person)),
              label: 'Account '),
        ]);
  }
}
