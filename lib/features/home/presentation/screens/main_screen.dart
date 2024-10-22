import 'package:flutter/material.dart';
import 'package:grocery/features/home/data/data_source/product_data_source.dart';
import 'package:grocery/features/home/data/repositories/product_repositories_impl.dart';
import 'package:grocery/features/home/domain/entities/product_entity.dart';
import 'package:grocery/features/home/domain/useCase/products_use_case/get_products_use_case.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<ProductEntity> _products = [];
  late final GetProductsUseCase _getProductsUseCase;

  @override
  void initState() {
    _getProductsUseCase =
        GetProductsUseCase(ProductRepositoriesImpl(ProductLocaleDataSource()));
    getProduct();
    super.initState();
  }

  Future<void> getProduct() async {
    final products = await _getProductsUseCase.call();
    setState(() {
      _products = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _products.length,
                  itemBuilder: (context, index) {
                    final product = _products[index];
                    return Text('${product.name}');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
