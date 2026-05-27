import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/widgets/shipping_section.dart';

class CheckoutPageView extends StatefulWidget {
  const CheckoutPageView({super.key});

  @override
  State<CheckoutPageView> createState() => _CheckoutPageViewState();
}

class _CheckoutPageViewState extends State<CheckoutPageView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: getPages().length,
      itemBuilder: (context, index) => getPages()[index],
    );
  }
}

List<Widget> getPages() => const [
  ShippingSection(),
  SizedBox(),
  SizedBox(),
  SizedBox(),
];
