import 'package:day_1/controller/cart_controller.dart';
import 'package:day_1/controller/shopping_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CartScreen extends StatelessWidget {
  CarController carController = Get.put(CarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text(
            "Cart Items",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Expanded(child: GetX<CarController>(builder: (controller) {
            return ListView.builder(
                itemCount: carController.cartItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: ListTile(
                      leading: Image.network(
                          carController.cartItems[index].productImage),
                      title: Text(carController.cartItems[index].productName),
                      trailing: Text(
                          "Rs ${carController.cartItems[index].productPrice}"),
                    ),
                  );
                });
          })),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Total Price : ${carController.getTotalPrice}"),
              ElevatedButton(onPressed: () => {}, child: Text("Checkout"))
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
