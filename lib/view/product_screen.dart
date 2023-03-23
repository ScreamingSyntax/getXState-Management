// ignore_for_file: prefer_const_constructors

import 'package:day_1/controller/cart_controller.dart';
import 'package:day_1/controller/shopping_controller.dart';
import 'package:day_1/view/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  final shopping = Get.put(ShoppingController());
  final cart = Get.put(CarController());
  int cartLength = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GetX<CarController>(builder: (controller) {
        return FloatingActionButton.extended(
          onPressed: () {
            Get.to(() => CartScreen());
          },
          label: Text("${controller.cartItems.length}"),
          icon: Icon(CupertinoIcons.cart),
        );
      }),
      body: SafeArea(
        child: GetX<ShoppingController>(builder: (controller) {
          if (controller.products.isNotEmpty)
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: shopping.products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Card(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 90,
                                    child: Image.network(
                                        shopping.products[index].productImage),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(CupertinoIcons.money_dollar),
                                      Text("Rs 1000")
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () => {
                                            cart.addToCart(
                                                controller.products[index])
                                          },
                                      child: Text("Add to Cart"))
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ]);
          else
            return Center(child: CircularProgressIndicator());
        }),
      ),
    );
  }
}
