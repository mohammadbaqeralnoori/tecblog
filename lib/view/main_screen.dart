import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/view/home_screen.dart';
import 'package:tec/view/profile_screen.dart';
import 'package:tec/models/fake_data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class MainScreenState extends State<MainScreen> {
  var selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var textThem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    // ignore: non_constant_identifier_names
    double BodyMargin = size.width / 10;

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: SolidColors.scafoldBg,
          child: Padding(
            padding: EdgeInsets.only(right: BodyMargin, left: BodyMargin),
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                  child: Image.asset(
                    Assets.images.logo.path,
                    scale: 3,
                  ),
                )),
                ListTile(
                  title: Text(
                    "پروفایل کاربری",
                    style: textThem.headline4,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title: Text(
                    "درباره تک‌بلاگ",
                    style: textThem.headline4,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title: Text(
                    "اشتراک گذاری تک بلاگ",
                    style: textThem.headline4,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: SolidColors.dividerColor,
                ),
                ListTile(
                  title: Text(
                    "تک‌بلاگ در گیت هاب",
                    style: textThem.headline4,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        // appbar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: SolidColors.scafoldBg,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (() {
                  _key.currentState!.openDrawer();
                }),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
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
            Positioned.fill(
                child: IndexedStack(
              index: selectedPageIndex,
              children: [
                HomeScreen(
                    size: size,
                    textThem: textThem,
                    BodyMargin: BodyMargin), // 0
                ProfileScreen(
                    size: size,
                    textThem: textThem,
                    BodyMargin: BodyMargin), // 1
              ],
            )),
            BottomNavigation(
              size: size,
              BodyMargin: BodyMargin,
              changeScreen: (int value) {
                setState(() {
                  selectedPageIndex = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.size,
    required this.BodyMargin,
    required this.changeScreen,
  });

  final Size size;
  // ignore: non_constant_identifier_names
  final double BodyMargin;
  final Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8,
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
              gradient: LinearGradient(colors: gradiantColors.bottomNav),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (() => changeScreen(0)),
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
                    onPressed: (() => changeScreen(1)),
                    icon: ImageIcon(
                      Assets.icons.user.provider(),
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
