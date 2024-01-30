import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windsorfarma/constants/color.dart';

class SectionWidgetView extends GetView {
  SectionWidgetView(
      {super.key,
      required this.sectionTitle,
      required this.subSectionTitle,
      this.onTap});

  final String sectionTitle;
  final String subSectionTitle;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ' ${sectionTitle}',
          style: GoogleFonts.openSans(
              color: whiteColor, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        TextButton(
          onPressed: () => onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${subSectionTitle}',
                style: GoogleFonts.openSans(color: whiteColor, fontSize: 16),
              )
            ],
          ),
        )
      ],
    );
  }
}
