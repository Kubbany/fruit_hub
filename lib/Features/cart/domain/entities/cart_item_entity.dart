import 'package:fruit_hub/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  int count;

  CartItemEntity({required this.product, this.count = 1});

  num calculateTotalPrice() => product.unitAmount * count;
  num calculateTotalWeight() => product.unitAmount * count;
  void increaseCount() => count++;
  void decreaseCount() => count > 0 ? count-- : count;
}
