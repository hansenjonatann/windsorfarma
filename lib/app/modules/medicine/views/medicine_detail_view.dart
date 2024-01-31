import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/constants/color.dart';

class MedicineDetailView extends GetView {
  MedicineDetailView({required this.item});

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text('${item['product_name']}'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 320.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "${item['photo']}",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item['product_name']}',
                        style: GoogleFonts.openSans(
                          color: whiteColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${item['category']}',
                        style: GoogleFonts.openSans(
                          color: Colors.grey[600],
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${item['price']}',
                        style: GoogleFonts.openSans(
                          color: secondaryColor,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${item['discount_price']}',
                        style: GoogleFonts.openSans(
                          color: Colors.grey[600],
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Divider(),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Description",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "${item['description']}",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
