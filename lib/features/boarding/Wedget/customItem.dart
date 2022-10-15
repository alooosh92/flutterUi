import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_one/publicVar/size.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, this.image, this.title, this.decration});
  final String? image;
  final String? title;
  final String? decration;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.defultSize! * 2,
          child: Image.asset(image!),
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),
        Text(
          decration!,
          style: TextStyle(
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          softWrap: false,
        )
      ],
    );
  }
}
