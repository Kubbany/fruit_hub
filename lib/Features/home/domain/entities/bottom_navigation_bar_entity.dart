import 'package:fruit_hub/Core/utils/constants/assets.dart';

class BottomNavigationBarEntity {
  final String activeIcon, inActiveIcon, title;

  BottomNavigationBarEntity({
    required this.activeIcon,
    required this.inActiveIcon,
    required this.title,
  });
}

List<BottomNavigationBarEntity> get getBottomNavigationBarItems => [
  BottomNavigationBarEntity(
    activeIcon: Assets.imagesVuesaxBoldHome,
    inActiveIcon: Assets.imagesVuesaxOutlineHome,
    title: 'الرئيسية',
  ),
  BottomNavigationBarEntity(
    activeIcon: Assets.imagesVuesaxBoldProducts,
    inActiveIcon: Assets.imagesVuesaxOutlineProducts,
    title: 'المنتجات',
  ),
  BottomNavigationBarEntity(
    activeIcon: Assets.imagesVuesaxBoldShoppingCart,
    inActiveIcon: Assets.imagesVuesaxOutlineShoppingCart,
    title: 'سلة التسوق',
  ),
  BottomNavigationBarEntity(
    activeIcon: Assets.imagesVuesaxBoldUser,
    inActiveIcon: Assets.imagesVuesaxOutlineUser,
    title: 'حسابي',
  ),
];
