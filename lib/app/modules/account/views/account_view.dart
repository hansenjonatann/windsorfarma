import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:windsorfarma/app/modules/account/views/edit_profile_view.dart';

import 'package:windsorfarma/constants/color.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Account'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Get.to(EditProfileView());
                },
                title: Text(
                  'Edit Profile',
                  style: GoogleFonts.openSans(
                      color: whiteColor, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Click here to edit your profile',
                    style: GoogleFonts.openSans(
                      color: whiteColor,
                    )),
                leading: Icon(
                  Icons.mode_edit_outline,
                  color: whiteColor,
                ),
              ),
              Divider(
                color: whiteColor,
                height: 5,
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () => controller.doLogout(),
                title: Text(
                  'Log Out',
                  style: GoogleFonts.openSans(
                      color: whiteColor, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Click here to logout from your account',
                    style: GoogleFonts.openSans(
                      color: whiteColor,
                    )),
                leading: Icon(
                  Icons.logout,
                  color: whiteColor,
                ),
              ),
              Divider(
                color: whiteColor,
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
