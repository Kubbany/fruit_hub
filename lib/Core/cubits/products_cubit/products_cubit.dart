import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/repos/product_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.productRepo}) : super(ProductsInitial());

  final ProductRepo productRepo;
  int productsLength = 0;

  Future<void> getProducts() async {
    emit(ProductsInLoading());
    final result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsFailure(errorMessage: failure.message)),
      (products) {
        emit(
          ProductsSuccess(products: products),
        );
        productsLength = products.length;
      },
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsInLoading());
    final result = await productRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductsFailure(errorMessage: failure.message)),
      (products) => emit(
        ProductsSuccess(products: products),
      ),
    );
  }
}
