import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_one/features/boarding/Wedget/dotsCustom.dart';
import 'package:test_one/features/boarding/Wedget/page_view.dart';
import 'package:test_one/features/login/login_page.dart';
import 'package:test_one/publicVar/publicVar.dart';
import 'package:test_one/publicVar/size.dart';
import 'package:test_one/wedget/cutom_button.dart';

class BoardingBody extends StatefulWidget {
  const BoardingBody({super.key});

  @override
  State<BoardingBody> createState() => _BoardingBodyState();
}

class _BoardingBodyState extends State<BoardingBody> {
  PageController? _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.defultSize! + 100,
          bottom: SizeConfig.defultSize! + 100,
          left: SizeConfig.defultSize! / 10,
          right: SizeConfig.defultSize! / 10,
          child: PageViewCustom(pageController: _pageController),
        ),
        Positioned(
          top: SizeConfig.defultSize!,
          right: 32,
          child: Visibility(
            visible: _pageController!.hasClients
                ? (_pageController!.page == 2 ? false : true)
                : true,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0Xff898989),
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defultSize,
          right: SizeConfig.defultSize,
          bottom: SizeConfig.defultSize!,
          child: CostomButten(
            text: _pageController!.hasClients
                ? (_pageController!.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
            pressd: () => {
              if (_pageController!.page! < 2)
                {
                  _pageController?.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn),
                }
              else
                {Navigator.of(context).pushNamed('loginPage')}
            },
          ),
        ),
        Positioned(
          bottom: SizeConfig.defultSize! * 2,
          left: SizeConfig.defultSize!,
          right: SizeConfig.defultSize!,
          child: DotsCustom(
              dotIndex:
                  _pageController!.hasClients ? _pageController!.page : 0),
        ),
      ],
    );
  }
}
