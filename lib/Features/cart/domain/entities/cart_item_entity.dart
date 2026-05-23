import 'package:equatable/equatable.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity product;
  int count;

  CartItemEntity({required this.product, this.count = 1});

  num calculateTotalPrice() => product.price * count;
  num calculateTotalWeight() => product.unitAmount * count;
  void increaseCount() => count++;
  void decreaseCount() => count > 1 ? count-- : count;

  @override
  List<Object?> get props => [product];
}
