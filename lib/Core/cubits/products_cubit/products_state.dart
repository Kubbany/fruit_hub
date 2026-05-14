part of 'products_cubit.dart';

@immutable
sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {}

final class ProductsInLoading extends ProductsState {}

final class ProductsFailure extends ProductsState {
  final String errorMessage;

  const ProductsFailure({required this.errorMessage});
}

final class ProductsSuccess extends ProductsState {
  final List<ProductEntity> products;

  const ProductsSuccess({required this.products});
}
