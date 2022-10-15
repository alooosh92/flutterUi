import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_one/features/boarding/Wedget/body_view.dart';

class boardingView extends StatelessWidget {
  const boardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoardingBody(),
    );
  }
}
