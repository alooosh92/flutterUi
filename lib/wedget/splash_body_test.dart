import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashBodyTest extends StatefulWidget {
  const SplashBodyTest({super.key});

  @override
  State<SplashBodyTest> createState() => _SplashBodyTestState();
}

class _SplashBodyTestState extends State<SplashBodyTest>
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
                  color: Color(0XFFFFFFFF),
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
          ),
        ),
        Image.asset('assets/images/image.png')
      ],
    );
  }
}
