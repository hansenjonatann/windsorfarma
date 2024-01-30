import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/constants/color.dart';

class EditProfileView extends GetView {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
    );
  }
}
