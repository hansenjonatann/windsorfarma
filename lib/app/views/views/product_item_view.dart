import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:windsorfarma/app/modules/medicine/views/medicine_detail_view.dart';
import 'package:windsorfarma/constants/color.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({
    super.key,
    required this.item,
  });

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(MedicineDetailView(item: item));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 160.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "${item['photo']}",
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blue[400],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item['product_name']}",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${item['description']}",
                            style: GoogleFonts.openSans(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                        SizedBox(
                          width: 4.0,
                        ),
                        Icon(
                          Icons.circle,
                          size: 4.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text("${item['category']}",
                        style: GoogleFonts.openSans(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text("\$${item['price']}",
                        style: GoogleFonts.openSans(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                    SizedBox(
                      height: 6.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
