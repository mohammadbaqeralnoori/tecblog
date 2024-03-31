import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_strings.dart';
import 'package:tec/view/my_cats.dart';
import 'package:validators/validators.dart';

class RegisterIntro extends StatelessWidget {
  const RegisterIntro({super.key});

  @override
  Widget build(BuildContext context) {
    var textThem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.techbot.path,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: MyStrings.welcom, style: textThem.headline4)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: () {
                  _showEmailBottomSheet(context, size, textThem);
                },
                child: const Text(
                  "بزن بریم ",
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Future<dynamic> _showEmailBottomSheet(
      BuildContext context, Size size, TextTheme textThem) {
    // RegExp isEmail = RegExp('^[a-z-0-9]+@');

    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: size.height / 2,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    MyStrings.insertYourEmail,
                    style: textThem.headline4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: TextField(
                      onChanged: (value) {
                        isEmail(value);
                        print(
                            value + " is Email : " + isEmail(value).toString());

                        // print(value +
                        //     " is Email " +
                        //     isEmail.hasMatch(value).toString());
                      },
                      style: textThem.headline5,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "techblog@gmail.com",
                          hintStyle: textThem.headline5),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        Navigator.pop(context);
                        _activateCodeBottomSheet(context, size, textThem);
                      }),
                      child: Text("ادامه"))
                ],
              )),
            ),
          );
        }));
  }

  Future<dynamic> _activateCodeBottomSheet(
      BuildContext context, Size size, TextTheme textThem) {
    // RegExp isEmail = RegExp('^[a-z-0-9]+@');

    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: size.height / 2,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    MyStrings.activateCode,
                    style: textThem.headline4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: TextField(
                      onChanged: (value) {
                        isEmail(value);
                        print(
                            value + " is Email : " + isEmail(value).toString());

                        // print(value +
                        //     " is Email " +
                        //     isEmail.hasMatch(value).toString());
                      },
                      style: textThem.headline5,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "******", hintStyle: textThem.headline5),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => MyCats()));
                      }),
                      child: Text("ادامه"))
                ],
              )),
            ),
          );
        }));
  }
}
