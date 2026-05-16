import 'package:fruit_hub/core/entities/product_entity.dart';

ProductEntity getDummyData() {
  return ProductEntity(
    name: 'Apple',
    imageUrl: null,
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
