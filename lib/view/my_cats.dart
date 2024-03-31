import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_component.dart';
import 'package:tec/my_strings.dart';
import 'package:tec/my_colors.dart';

class MyCats extends StatefulWidget {
  const MyCats({super.key});

  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThem = Theme.of(context).textTheme;
    double bodyMargin = size.width / 10;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  Assets.images.techbot.path,
                  height: 100,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  MyStrings.successfulRegistration,
                  style: textThem.headline4,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "نام و نام خانوادگی",
                    hintStyle: textThem.headline4,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  MyStrings.chooseCats,
                  style: textThem.headline4,
                ),

                // taglist
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: tagList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 2,
                          childAspectRatio: 0.2,
                        ),
                        itemBuilder: ((context, index) {
                          return InkWell(
                              onTap: (() {
                                setState(() {
                                  if (selectedTags.contains(tagList[index])) {
                                    selectedTags.add(tagList[index]);
                                  } else {
                                    print("${tagList[index]} exist");
                                  }
                                });
                              }),
                              child:
                                  MainTags(textThem: textThem, index: index));
                        })),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  Assets.icons.downCatArrow.path,
                  scale: 3,
                ),
                // seleceted Tags
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: selectedTags.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 2,
                          childAspectRatio: 0.2,
                        ),
                        itemBuilder: ((context, index) {
                          return Container(
                              height: 60,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                  color: SolidColors.surface),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 8, 16, 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      selectedTags[index].title,
                                      style: textThem.headline4,
                                    ),
                                    InkWell(
                                      onTap: (() {
                                        setState(() {
                                          selectedTags.removeAt(index);
                                        });
                                      }),
                                      child: const Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        })),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
