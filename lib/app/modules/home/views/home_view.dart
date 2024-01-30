import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:windsorfarma/app/modules/medicine/views/medicine_view.dart';

import 'package:windsorfarma/app/routes/app_pages.dart';

import 'package:windsorfarma/app/views/views/bottom_navigation_bar_view.dart';
import 'package:windsorfarma/app/views/views/brand_appbar_view.dart';

import 'package:windsorfarma/app/views/views/cart_button_view.dart';
import 'package:windsorfarma/app/views/views/product_item_view.dart';
import 'package:windsorfarma/app/views/views/section_widget_view.dart';

import 'package:windsorfarma/constants/color.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BrandAppBarWidget(),
        ),
        actions: [CartButtonView()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SectionWidgetView(
                  sectionTitle: 'Category',
                  subSectionTitle: 'See All Categories'),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SectionWidgetView(
                  sectionTitle: 'Medicine',
                  subSectionTitle: 'See all medicines',
                  onTap: (p0) => controller.seeAllMedicines()),
              const SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.5,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 10,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return ProductItemView(item: item);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarView(
        currentSelectionIndex: 0,
        onTapFunction: (p0) => Get.toNamed(Routes.HOME),
      ),
    );
  }
}
