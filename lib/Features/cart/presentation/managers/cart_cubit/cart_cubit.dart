import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_entity.dart';
import 'package:fruit_hub/features/cart/domain/entities/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cart = CartEntity(cartItems: []);

  void addProduct(ProductEntity product) {
    bool productExsists = cart.productExists(product);
    var cartItem = cart.getCartItem(product);
    if (productExsists) {
      cartItem.increaseCount();
    } else {
      cart.addCartItem(cartItem);
    }
    emit(CartItemAdded());
  }

  void removeFromCart(CartItemEntity cartItem) {
    cart.removeCartItem(cartItem);
    emit(CartItemRemoved());
  }
}
