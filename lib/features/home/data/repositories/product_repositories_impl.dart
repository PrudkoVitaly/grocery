import 'package:grocery/features/home/data/data_source/product_data_source.dart';
import 'package:grocery/features/home/data/model/product_model.dart';
import 'package:grocery/features/home/domain/entities/product_entity.dart';
import '../../domain/repositories/product_repositories.dart';

class ProductRepositoriesImpl implements ProductRepositories {
  final ProductLocaleDataSource _productLocaleDataSource;

  ProductRepositoriesImpl(this._productLocaleDataSource);

  @override
  Future<List<ProductEntity>> getProducts() async {
    return await _productLocaleDataSource.getProductsFromDB();
  }
}
