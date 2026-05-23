import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity({required this.cartItems});

  void addCartItem(CartItemEntity cartItem) => cartItems.add(cartItem);

  void removeCartItem(CartItemEntity cartItem) => cartItems.remove(cartItem);

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var cartItem in cartItems) {
      totalPrice += cartItem.calculateTotalPrice();
    }
    return totalPrice;
  }

  bool productExists(ProductEntity product) {
    for (var cartItem in cartItems) {
      if (cartItem.product == product) return true;
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity product) {
    for (var cartItem in cartItems) {
      if (cartItem.product == product) return cartItem;
    }
    return CartItemEntity(product: product);
  }
}
