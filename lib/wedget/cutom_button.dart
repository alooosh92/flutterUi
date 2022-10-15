import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_one/publicVar/publicVar.dart';
import 'package:test_one/publicVar/size.dart';

class CostomButten extends StatelessWidget {
  const CostomButten({super.key, this.text, this.pressd});
  final String? text;
  final VoidCallback? pressd;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: pressd,
      child: Container(
        height: SizeConfig.defultSize! / 2,
        width: SizeConfig.screenWidth! / 3,
        decoration: BoxDecoration(
            color: primeryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: Color(0XFFFFFFFF),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
