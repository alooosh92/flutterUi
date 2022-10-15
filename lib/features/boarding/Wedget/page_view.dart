import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_one/features/boarding/Wedget/customItem.dart';

class PageViewCustom extends StatelessWidget {
  const PageViewCustom({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        CustomItem(
          image: 'assets/images/image1.png',
          title: 'E Shopping',
          decration: 'Explore  top organic fruits & grab them',
        ),
        CustomItem(
          image: 'assets/images/image2.png',
          title: 'Delivery on the way',
          decration: 'Get your order by speed delivery',
        ),
        CustomItem(
          image: 'assets/images/image3.png',
          title: 'Delivery Arrived',
          decration: 'Order is arrived at your Place',
        )
      ],
    );
  }
}
