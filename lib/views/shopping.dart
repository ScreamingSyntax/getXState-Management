import 'package:day_1/controller/cart_controller.dart';
import 'package:day_1/controller/shopping_controller.dart';
import 'package:day_1/views/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  void navigateToAnotherPage() {
    Get.to(Cart());
  }

  ShoppingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return GetX<ShoppingController>(builder: (controller) {
      return Scaffold(
          floatingActionButton: GetX<CartController>(builder: (controllerCart) {
            return FloatingActionButton.extended(
              onPressed: navigateToAnotherPage,
              label: Text("${controllerCart.totalORder}"),
              icon: Icon(CupertinoIcons.cart),
            );
          }),
          backgroundColor: Colors.teal,
          body: (controller.shoppingProducts.isNotEmpty)
              ? Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                shoppingController.shoppingProducts.length,
                            itemBuilder: ((context, index) {
                              return Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${controller.shoppingProducts[index].productName}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "${controller.shoppingProducts[index].productDescription}",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      '${controller.shoppingProducts[index].price}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: () => {
                                        cartController.addToCart(
                                            controller.shoppingProducts[index])
                                      },
                                      child: const Text('Add to Cart'),
                                    ),
                                  ],
                                ),
                              );
                            }))),
                    GetX<CartController>(builder: (controller) {
                      return Text(
                        "Total Price : ${controller.totalPrice}",
                        style: TextStyle(fontSize: 23),
                      );
                    }),
                    SizedBox(
                      height: 100,
                    )
                  ],
                )
              : Center(child: CircularProgressIndicator()));
    });
  }
}
