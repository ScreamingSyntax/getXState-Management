import 'package:day_1/models/products.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Products>[].obs;

  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
  int get totalORder => cartItems.length;

  addToCart(Products products) {
    cartItems.add(products);
  }
}
