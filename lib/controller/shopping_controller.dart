import 'package:day_1/model/products.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = <Products>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var fetchProducts = [
      Products(
          productName: "Iphone X",
          productImage:
              "https://lh6.googleusercontent.com/IcxeFfA1EizvGG8ZmGpOkN9IOPbRxRbEf0mWKdaVLopkbJt8aJxkB8YhljdB7A34DRoOweOhhrEYzTg8TtpFmf84Y29LtJ7rrCgn2KXIgd6jCjUQnEMvrvYJn-HrheWQC9hPBBu1",
          productPrice: 1000),
      Products(
          productName: "Samsung classic",
          productImage:
              "https://purepng.com/public/uploads/large/purepng.com-samsung-phonesmartphoneandroidgooglephoneapplication-211519339028ghq1u.png",
          productPrice: 1000),
      Products(
          productName: "Iphone 11",
          productImage:
              "https://www.pngmart.com/files/15/Apple-iPhone-11-PNG-Image.png",
          productPrice: 1000),
      Products(
          productName: "Running Shoes",
          productImage: "https://freepngimg.com/thumb/categories/627.png",
          productPrice: 1000),
      Products(
          productName: "Plain Shirt",
          productImage:
              "https://parspng.com/wp-content/uploads/2022/07/Tshirtpng.parspng.com_.png",
          productPrice: 1000),
      Products(
          productName: "Black Coat",
          productImage: "https://pngimg.com/uploads/suit/suit_PNG93209.png",
          productPrice: 1000),
      Products(
          productName: "Floral Dress",
          productImage:
              "https://freepngimg.com/download/dress/33229-5-floral-dress-picture.png",
          productPrice: 1000),
      Products(
          productName: "Yellow Flower Dress",
          productImage: "https://pngimg.com/uploads/dress/dress_PNG132.png",
          productPrice: 1000),
      Products(
          productName: "Black Dress",
          productImage:
              "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ae8a96c0-cb6f-4ad8-a7a0-5acd4a48713a/d5avtyo-aa18bdec-8021-4cd0-a1a0-10a431693acf.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2FlOGE5NmMwLWNiNmYtNGFkOC1hN2EwLTVhY2Q0YTQ4NzEzYVwvZDVhdnR5by1hYTE4YmRlYy04MDIxLTRjZDAtYTFhMC0xMGE0MzE2OTNhY2YucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.urciujOyUwvE_k0t2nQujfHIioFDmp3TtWzmKuGNuWY",
          productPrice: 1000),
    ];
    products.value = fetchProducts;
  }
}
