import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruit_hub/features/home/presentation/widgets/navigation_bar_item.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  State<CustomButtomNavigationBar> createState() =>
      _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: getBottomNavigationBarItems.asMap().entries.map(
          (e) {
            var index = e.key;
            var entity = e.value;
            return Expanded(
              flex: index == selectedIndex ? 3 : 2,
              child: InkWell(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: NavigationBarItem(
                  isSelected: selectedIndex == index,
                  bottomNavigationBarEntity: entity,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
