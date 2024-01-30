import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:windsorfarma/constants/color.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.poppins(
              color: secondaryColor, fontWeight: FontWeight.w700, fontSize: 22),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Medicine Name',
              style: GoogleFonts.openSans(
                  color: whiteColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Medicine Description',
              style: GoogleFonts.openSans(color: whiteColor.withOpacity(0.4)),
            ),
            iconColor: secondaryColor,
            leading: CircleAvatar(
              backgroundColor: whiteColor.withOpacity(0.6),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
