import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_component.dart';
import 'package:tec/my_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.size,
    required this.textThem,
    required this.BodyMargin,
  });

  final Size size;
  final TextTheme textThem;
  final double BodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: Assets.images.profileavatar.provider(),
            height: 100,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                Assets.icons.bluepen.provider(),
                color: SolidColors.seeMore,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                MyStrings.imageProfileEdit,
                style: textThem.headline3,
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "فاطمه امیری",
            style: textThem.headline5,
          ),
          Text(
            "fatemeamiri@gmail.com",
            style: textThem.headline4,
          ),
          const SizedBox(
            height: 40,
          ),
          TecDivider(size: size),
          InkWell(
            onTap: (() {}),
            splashColor: SolidColors.primeryColor,
            child: const SizedBox(
                height: 45, child: Center(child: Text(MyStrings.myFavBlog))),
          ),
          TecDivider(size: size),
          InkWell(
            onTap: (() {}),
            splashColor: SolidColors.primeryColor,
            child: const SizedBox(
                height: 45, child: Center(child: Text(MyStrings.myFavPodcast))),
          ),
          TecDivider(size: size),
          InkWell(
            onTap: (() {}),
            splashColor: SolidColors.primeryColor,
            child: const SizedBox(
                height: 45, child: Center(child: Text(MyStrings.logOut))),
          ),
        ],
      ),
    ));
  }
}
