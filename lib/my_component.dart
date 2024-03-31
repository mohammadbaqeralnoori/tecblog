import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/my_colors.dart';

class TecDivider extends StatelessWidget {
  const TecDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: SolidColors.dividerColor,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}

class MainTags extends StatelessWidget {
  MainTags({
    super.key,
    required this.textThem,
    required this.index,
  });

  final TextTheme textThem;
  var index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          gradient: LinearGradient(
              colors: gradiantColors.tags,
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 16, 8),
          child: Row(
            children: [
              ImageIcon(
                Assets.icons.hashtagicon.provider(),
                color: SolidColors.hashTag,
                size: 16,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                tagList[index].title,
                style: textThem.headline2,
              )
            ],
          ),
        ));
  }
}
