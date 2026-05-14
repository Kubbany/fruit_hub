import 'package:fruit_hub/core/entities/product_entity.dart';

ProductEntity getDummyData() {
  return ProductEntity(
    name: 'Apple',
    imageUrl:
        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    price: 12.99,
    unitAmount: 1,
    expirationMonths: 6,
    numOfCalories: 100,
    isOrganic: true,
    isFeatured: false,
    code: 'x6a',
    description: 'Good',
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() =>
    List.generate(30, (index) => getDummyData());
