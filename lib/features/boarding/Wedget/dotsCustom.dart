import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:test_one/publicVar/publicVar.dart';

class DotsCustom extends StatelessWidget {
  const DotsCustom({super.key, @required this.dotIndex});
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: dotIndex!,
      dotsCount: 3,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: primeryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: primeryColor),
        ),
      ),
    );
  }
}
