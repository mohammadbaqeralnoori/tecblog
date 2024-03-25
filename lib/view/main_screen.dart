import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_strings.dart';
import 'package:tec/view/home_Screen.dart';

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textThem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double BodyMargin = size.width / 10;

    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        // appbar
        appBar: AppBar(
          backgroundColor: solidColors.scafoldBg,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Image(
                image: Assets.images.logo.provider(),
                height: size.height / 13.6,
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            homeScreen(size: size, textThem: textThem, BodyMargin: BodyMargin),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: size.height / 10,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: gradiantColors.bottomNavBackgroand,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Padding(
                  padding: EdgeInsets.only(right: BodyMargin, left: BodyMargin),
                  child: Container(
                    height: size.height / 8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      gradient:
                          LinearGradient(colors: gradiantColors.bottomNav),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: (() {}),
                            icon: ImageIcon(
                              Assets.icons.home.provider(),
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: (() {}),
                            icon: ImageIcon(
                              Assets.icons.write.provider(),
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: (() {}),
                            icon: ImageIcon(
                              Assets.icons.user.provider(),
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
