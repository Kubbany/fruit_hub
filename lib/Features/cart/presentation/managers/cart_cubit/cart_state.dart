part of 'cart_cubit.dart';

@immutable
sealed class CartState {
  const CartState();
}

final class CartInitial extends CartState {}

final class CartItemAdded extends CartState {}

final class CartItemRemoved extends CartState {}
