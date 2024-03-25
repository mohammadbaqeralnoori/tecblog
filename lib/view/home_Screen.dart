import 'package:flutter/material.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_strings.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
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
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
            homePagePoster(size: size, textThem: textThem),
            SizedBox(
              height: 16,
            ),
            homePageTagList(BodyMargin: BodyMargin, textThem: textThem),
            SizedBox(
              height: 32,
            ),
            seeMoreBlog(BodyMargin: BodyMargin, textThem: textThem),
            homePageBlogList(
                size: size, BodyMargin: BodyMargin, textThem: textThem),
            seeMorePodcast(BodyMargin: BodyMargin, textThem: textThem),
            homePagePodcastList(size: size, BodyMargin: BodyMargin),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

class homePagePodcastList extends StatelessWidget {
  const homePagePodcastList({
    super.key,
    required this.size,
    required this.BodyMargin,
  });

  final Size size;
  final double BodyMargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.7,
      child: ListView.builder(
          itemCount: blogList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            // blog item
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? BodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            image: DecorationImage(
                                image:
                                    NetworkImage(podcastModel[index].imageUrl),
                                fit: BoxFit.cover),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: size.width / 2.4,
                      child: Text(
                        podcastModel[index].name,
                      ))
                ],
              ),
            );
          })),
    );
  }
}

class seeMorePodcast extends StatelessWidget {
  const seeMorePodcast({
    super.key,
    required this.BodyMargin,
    required this.textThem,
  });

  final double BodyMargin;
  final TextTheme textThem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: BodyMargin, bottom: 8),
      child: Row(
        children: [
          ImageIcon(
            Assets.icons.bluevoice.provider(),
            color: solidColors.seeMore,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            myStrings.viewHotestPodCasts,
            style: textThem.headline3,
          )
        ],
      ),
    );
  }
}

class homePageBlogList extends StatelessWidget {
  const homePageBlogList({
    super.key,
    required this.size,
    required this.BodyMargin,
    required this.textThem,
  });

  final Size size;
  final double BodyMargin;
  final TextTheme textThem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.7,
      child: ListView.builder(
          itemCount: blogList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            // blog item
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? BodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              image: DecorationImage(
                                  image: NetworkImage(blogList[index].imageUrl),
                                  fit: BoxFit.cover),
                            ),
                            foregroundDecoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: gradiantColors.blogPost),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text(
                                    blogList[index].writer,
                                    style: textThem.subtitle1,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      blogList[index].views,
                                      style: textThem.subtitle1,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: size.width / 2.4,
                      child: Text(
                        blogList[index].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ))
                ],
              ),
            );
          })),
    );
  }
}

class seeMoreBlog extends StatelessWidget {
  const seeMoreBlog({
    super.key,
    required this.BodyMargin,
    required this.textThem,
  });

  final double BodyMargin;
  final TextTheme textThem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: BodyMargin, bottom: 8),
      child: Row(
        children: [
          ImageIcon(
            Assets.icons.bluepen.provider(),
            color: solidColors.seeMore,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            myStrings.viewHotestBlog,
            style: textThem.headline3,
          )
        ],
      ),
    );
  }
}

class homePageTagList extends StatelessWidget {
  const homePageTagList({
    super.key,
    required this.BodyMargin,
    required this.textThem,
  });

  final double BodyMargin;
  final TextTheme textThem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tagList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.fromLTRB(0, 8, index == 0 ? BodyMargin : 15, 8),
              child: Container(
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
                          color: solidColors.hashTag,
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          tagList[index].title,
                          style: textThem.headline2,
                        )
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}

class homePagePoster extends StatelessWidget {
  const homePagePoster({
    super.key,
    required this.size,
    required this.textThem,
  });

  final Size size;
  final TextTheme textThem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: size.width / 1.25,
            height: size.height / 4.2,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                image: DecorationImage(
                    image: AssetImage(homePagePosterMap["imageAsset"]),
                    fit: BoxFit.cover)),
            foregroundDecoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                gradient: LinearGradient(
                    colors: gradiantColors.homePosterCoverGradiant,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter))),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      homePagePosterMap["writer"] +
                          " - " +
                          homePagePosterMap["date"],
                      style: textThem.subtitle1,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        homePagePosterMap["view"],
                        style: textThem.subtitle1,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  )
                ],
              ),
              Text(
                homePagePosterMap["title"],
                style: textThem.headline1,
              )
            ],
          ),
        )
      ],
    );
  }
}
