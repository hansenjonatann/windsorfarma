import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/constants/color.dart';

class FormFieldView extends GetView {
  FormFieldView(
      {required this.hintText,
      required this.icon,
      this.isVisible = false,
      this.keyboardType,
      this.controller});

  final String hintText;
  final IconData icon;
  final bool isVisible;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: accsentColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isVisible,
        style: TextStyle(color: whiteColor),
        decoration: InputDecoration(
          hintText: '${hintText}',
          hintStyle: TextStyle(color: whiteColor.withOpacity(0.4)),
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
