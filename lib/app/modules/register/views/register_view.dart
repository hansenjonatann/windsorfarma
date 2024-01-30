import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/app/routes/app_pages.dart';
import 'package:windsorfarma/app/views/views/brand_text_view.dart';
import 'package:windsorfarma/app/views/views/form_field_view.dart';
import 'package:windsorfarma/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 150),
          BrandTextView(),
          SizedBox(height: 32),
          Text(
            'Register',
            style: GoogleFonts.openSans(
                color: whiteColor, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          Text(
            'Register to create a new  account',
            style: GoogleFonts.openSans(
                color: whiteColor, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 47),
            child: Column(
              children: [
                FormFieldView(hintText: 'Name', icon: Icons.person),
                SizedBox(height: 10),
                FormFieldView(
                  hintText: 'Username',
                  icon: Icons.person,
                ),
                SizedBox(height: 10),
                FormFieldView(
                  hintText: 'Phone Number',
                  icon: Icons.phone,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                FormFieldView(
                  hintText: 'Email Adress',
                  icon: Icons.email,
                ),
                SizedBox(height: 10),
                FormFieldView(
                  hintText: 'Password',
                  icon: Icons.lock,
                ),
                SizedBox(height: 20),
                InkWell(
                    child: Container(
                  width: double.infinity,
                  height: 47,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Register',
                      style:
                          GoogleFonts.openSans(color: whiteColor, fontSize: 20),
                    ),
                  ),
                )),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Have an account?",
                      style: GoogleFonts.openSans(
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.LOGIN);
                        },
                        child: Text('Login',
                            style: GoogleFonts.openSans(
                                color: whiteColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16)))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
