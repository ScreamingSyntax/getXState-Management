import 'package:day_1/controller/cart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  final shoppingCart = Get.put(CartController());
  Cart({super.key});
  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(builder: (controller) {
      return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: shoppingCart.cartItems.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${controller.cartItems[index].productName}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${controller.cartItems[index].productDescription}",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${controller.cartItems[index].price}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () => {},
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
        ),
      );
    });
  }
}
