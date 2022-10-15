import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_one/features/boarding/boarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    animation = Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        AnimatedBuilder(
          animation: animation!,
          builder: (context, _) => Opacity(
            opacity: animation?.value,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            ),
          ),
        ),
        Image.asset(
          'assets/images/image.png',
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => boardingView(), transition: Transition.fade);
    });
  }
}
