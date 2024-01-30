import 'package:flutter/material.dart';

// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windsorfarma/constants/color.dart';

class BrandAppBarWidget extends StatelessWidget {
  const BrandAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Windsor ',
          style: GoogleFonts.poppins(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
        Text(
          'Farma',
          style: GoogleFonts.poppins(
              color: secondaryColor, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
