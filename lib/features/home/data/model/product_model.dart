import 'package:grocery/features/home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.image,
    required super.price,
    required super.name,
    required super.amount,
    required super.category,
    super.isNew,
    super.isOnSale,
    super.discount,
  });
}
