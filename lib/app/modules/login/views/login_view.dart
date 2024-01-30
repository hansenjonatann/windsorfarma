import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/app/routes/app_pages.dart';
import 'package:windsorfarma/app/views/views/brand_text_view.dart';
import 'package:windsorfarma/app/views/views/form_field_view.dart';

import '../controllers/login_controller.dart';

import '../../../../constants/color.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController _usernameC = TextEditingController();
  final TextEditingController _passwordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 150),
              BrandTextView(),
              SizedBox(height: 32),
              Text(
                'Login',
                style: GoogleFonts.openSans(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                'Login with your account to explore our app',
                style: GoogleFonts.openSans(
                    color: whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Column(
                  children: [
                    FormFieldView(
                      hintText: 'Username',
                      icon: Icons.person,
                      controller: _usernameC,
                    ),
                    SizedBox(height: 10),
                    FormFieldView(
                      hintText: 'Password',
                      icon: Icons.lock,
                      isVisible: true,
                      controller: _passwordC,
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () {
                          controller.login();
                        },
                        child: Container(
                          width: double.infinity,
                          height: 47,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
                              style: GoogleFonts.openSans(
                                  color: whiteColor, fontSize: 20),
                            ),
                          ),
                        )),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.openSans(
                            color: whiteColor,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.REGISTER);
                            },
                            child: Text('Register',
                                style: GoogleFonts.openSans(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16)))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
