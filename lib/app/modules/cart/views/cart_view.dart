import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var productItem = controller.products[index];
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (detail) {},
                confirmDismiss: (direction) async {
                  bool confirm = false;
                  await showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Confirm'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget>[
                              Text(
                                  "Are you sure you want to delete this item?"),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("No"),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              confirm = true;
                              Navigator.pop(context);
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      );
                    },
                  );
                  if (confirm) {
                    return Future.value(true);
                  }
                  return Future.value(false);
                },
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: NetworkImage(
                        "${productItem['photo']}",
                      ),
                    ),
                    title: Text("${productItem['product_name']}"),
                    subtitle: Text("${productItem['price']} USD"),
                    trailing: SizedBox(
                      width: 120.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            radius: 12.0,
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  controller.doDecrement();
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 9.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Obx(() {
                                return Text("${controller.itemQuantity}",
                                    style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ));
                              })),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 12.0,
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  controller.doIncremenet();
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 9.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Expanded(child: SizedBox()),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel ",
                        style: GoogleFonts.openSans(
                          color: whiteColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Check Out ",
                        style: GoogleFonts.openSans(
                          color: whiteColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
