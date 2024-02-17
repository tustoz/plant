import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:plant/data/category.dart';
import 'package:plant/data/plants.dart';
import 'package:plant/page/detail.dart';
import 'package:plant/utils/styles.dart';
import 'package:plant/widgets/custom_scroll_behavior.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return ScrollConfiguration(
      behavior: CustomScroll(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                  child: Column(
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 300),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hi, Maxi", style: Styles.headline3Style),
                            Image.asset("assets/images/notification.png"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      FadeInUp(
                        duration: const Duration(milliseconds: 500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: screen.width * 0.70,
                              height: screen.height * 0.060,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                              decoration: BoxDecoration(
                                color: Styles.bgColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(screen.width * 0.75),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/images/search.png"),
                                      const SizedBox(width: 12),
                                      Text(
                                        "Search Plant",
                                        style: Styles.textStyle
                                            .copyWith(color: Styles.greyColor),
                                      )
                                    ],
                                  ),
                                  Image.asset("assets/images/microphone.png")
                                ],
                              ),
                            ),
                            Container(
                              width: screen.width * 0.12,
                              height: screen.height * 0.060,
                              decoration: BoxDecoration(
                                color: Styles.primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(screen.height * 0.015),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/filter.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    height: 20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: plants.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: FadeInLeft(
                            duration: const Duration(milliseconds: 700),
                            child: Text(
                              category[index],
                              style: catStyle[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return FadeInUp(
                          duration: const Duration(milliseconds: 700),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                      description: plants[index].description,
                                      difficulty: plants[index].difficulty,
                                      type: plants[index].type,
                                      size: plants[index].size,
                                      thumb: plants[index].thumb,
                                      name: plants[index].name,
                                      price: plants[index].price,
                                      temperature: plants[index].temperature,
                                      height: plants[index].height,
                                      humidity: plants[index].humidity,
                                      image: plants[index].image,
                                    ),
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    width: screen.width * 0.55,
                                    height: screen.height * 0.5,
                                    padding: const EdgeInsets.only(bottom: 50),
                                    decoration: BoxDecoration(
                                      color: Styles.primaryColor,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Hero(
                                      tag: plants[index].image,
                                      child: Image.asset(
                                        plants[index].image,
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Image.asset(
                                      "assets/images/circle.png",
                                      fit: BoxFit.cover,
                                      scale: 0.8,
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: ClipOval(
                                      child: Container(
                                        color: Styles.bgColor,
                                        width: screen.width * 0.10,
                                        height: screen.width * 0.10,
                                        child: Image.asset(
                                          "assets/images/heart-green.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    bottom: 19,
                                    right: 8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              plants[index].type,
                                              style: Styles.textStyle.copyWith(
                                                color: Styles.bgColor,
                                              ),
                                            ),
                                            Text(
                                              plants[index].name,
                                              style: Styles.headline1Style,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: screen.width * 0.18,
                                          height: screen.height * 0.04,
                                          padding:
                                              const EdgeInsets.only(top: 2),
                                          decoration: BoxDecoration(
                                            color: Styles.bgColor,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  screen.width * 0.040),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              plants[index].price,
                                              style: Styles.textPriceStyle
                                                  .copyWith(fontSize: 14),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "New Plants",
                      style: Styles.textCatStyle.copyWith(
                        color: Styles.textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            width: screen.width * 0.9,
                            height: screen.height * 0.12,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: Styles.bgColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      plants[index].thumb,
                                    ),
                                    const SizedBox(width: 16),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          plants[index].type,
                                          style: Styles.textStyle,
                                        ),
                                        Text(
                                          plants[index].name,
                                          style: Styles.headline1Style.copyWith(
                                            color: Styles.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  plants[index].price,
                                  style: Styles.headline2Style,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
