import 'package:grocery/features/home/domain/entities/product_entity.dart';

abstract class ProductRepositories {
  Future<List<ProductEntity>> getProducts();
}