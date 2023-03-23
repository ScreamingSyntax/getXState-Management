import 'package:day_1/controller/shopping_controller.dart';
import 'package:day_1/model/products.dart';
import 'package:get/get.dart';

class CarController extends GetxController {
  var cartItems = <Products>[].obs;
  // double getTotalPrice = cartItems.fold(initialValue, (previousValue, element) => null)
  int get getTotalPrice =>
      cartItems.fold(0, (sum, item) => sum + item.productPrice);
  void addToCart(Products product) {
    cartItems.add(product);
  }
}
