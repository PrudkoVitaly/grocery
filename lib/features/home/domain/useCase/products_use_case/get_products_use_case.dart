import '../../entities/product_entity.dart';
import '../../repositories/product_repositories.dart';

class GetProductsUseCase {
  final ProductRepositories _productRepository;

  GetProductsUseCase(this._productRepository);

  Future<List<ProductEntity>> call() async {
    return await _productRepository.getProducts();
  }
}