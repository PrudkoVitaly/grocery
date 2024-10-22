import 'package:grocery/features/home/data/model/product_model.dart';

class ProductLocaleDataSource {
  List<ProductModel> getProductsFromDB() {
    return [
      ProductModel(
        image: "assets/peach.png",
        price: 8,
        name: "Fresh Peach",
        amount: "dozen",
        category: "Fruits",
        isNew: false,
        isOnSale: false,
      ),
      ProductModel(
        image: "assets/avocado.png",
        price: 7,
        name: "Avocado",
        amount: "2",
        category: "Fruits",
        isNew: true,
        isOnSale: false,
      ),
      ProductModel(
        image: "assets/pineapple.png",
        price: 9.90,
        name: "Pineapple",
        amount: "1.50",
        category: "Fruits",
        isNew: false,
        isOnSale: false,
      ),
      ProductModel(
        image: "assets/grapes.png",
        price: 7.05,
        name: "Black Grapes",
        amount: "5.00",
        category: "Fruits",
        isNew: false,
        isOnSale: true,
        discount: -16,
      ),
      ProductModel(
        image: "assets/pomegranate.png",
        price: 2.09,
        name: "Pomegranate",
        amount: "1.50",
        category: "Fruits",
        isNew: true,
        isOnSale: false,
      ),
      ProductModel(
        image: "assets/broccoli.png",
        price: 3.00,
        name: "Pomegranate",
        amount: "1.00",
        category: "Vegetables",
        isNew: false,
        isOnSale: false,
      ),
    ];
  }
}
