part of 'cart_cubit.dart';

@immutable
sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartItemAdded extends CartState {
  const CartItemAdded();
}

final class CartItemRemoved extends CartState {
  const CartItemRemoved();
}
