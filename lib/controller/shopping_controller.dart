import 'package:day_1/models/products.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var shoppingProducts = <Products>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 5));
    var serverResponse = [
      Products(
          id: 1,
          productName: "Giga",
          productImage: "nfada",
          productDescription: "dada",
          price: 5000),
      Products(
          id: 2,
          productName: "Apple",
          productImage: "Djadajda",
          productDescription: "dakdajda",
          price: 500),
      Products(
          id: 3,
          productName: "dada",
          productImage: "nfada",
          productDescription: "dadaada",
          price: 6450),
      Products(
          id: 4,
          productName: "dadac",
          productImage: "nfadada",
          productDescription: "dada",
          price: 1210),
      Products(
          id: 5,
          productName: "Gdada",
          productImage: "dada",
          productDescription: "adad",
          price: 900)
    ];
    shoppingProducts.value = serverResponse;
  }
}
