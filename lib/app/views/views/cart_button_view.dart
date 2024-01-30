import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/app/routes/app_pages.dart';

class CartButtonView extends StatelessWidget {
  const CartButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
          onPressed: () {
            Get.toNamed(Routes.CART);
          },
          icon: Icon(Icons.shopping_cart)),
    );
  }
}
