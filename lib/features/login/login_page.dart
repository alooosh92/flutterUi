import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_one/publicVar/publicVar.dart';
import 'package:test_one/publicVar/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image4.png'),
            Text(
              'Fruit Market',
              style: TextStyle(
                color: primeryColor,
                fontSize: 51,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: SizeConfig.defultSize,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: SizeConfig.defultSize! / 2,
                    width: SizeConfig.defultSize! * 1.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black45),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/GoogleIcon.png',
                        ),
                        Text('Login with'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: SizeConfig.defultSize! / 2,
                    width: SizeConfig.defultSize! * 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black45),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/FaceBookIcon.png'),
                        Text('Login with'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
