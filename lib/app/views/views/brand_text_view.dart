import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/constants/color.dart';

class BrandTextView extends GetView {
  const BrandTextView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Windsor ',
          style: GoogleFonts.poppins(
              color: whiteColor, fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          'Farma',
          style: GoogleFonts.poppins(
              color: secondaryColor, fontWeight: FontWeight.w800, fontSize: 30),
        ),
      ],
    );
  }
}
