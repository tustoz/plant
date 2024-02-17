import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:plant/data/category.dart';
import 'package:plant/utils/styles.dart';

class DetailScreen extends StatelessWidget {
  final String image,
      thumb,
      name,
      type,
      price,
      description,
      humidity,
      height,
      temperature,
      size,
      difficulty;

  const DetailScreen(
      {Key? key,
      required this.image,
      required this.thumb,
      required this.name,
      required this.type,
      required this.price,
      required this.description,
      required this.humidity,
      required this.height,
      required this.temperature,
      required this.size,
      required this.difficulty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: FadeInLeft(
              duration: const Duration(milliseconds: 800),
              child: Image.asset('assets/images/big-circle.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: screen.width,
              height: screen.height * 0.55,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Styles.greyColor.withOpacity(0.4),
                    offset: const Offset(0, 4),
                    blurRadius: 15,
                    spreadRadius: 4,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 300),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: ClipOval(
                            child: Container(
                              width: 40,
                              height: 40,
                              color: Colors.white.withOpacity(0.3),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/chevron-left.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Image.asset('assets/images/share.png'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      Hero(
                        tag: image,
                        child: Image.asset(
                          image,
                          scale: 1.4,
                        ),
                      ),
                      const SizedBox(width: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          info('Category', type),
                          info('Size', size),
                          info('Difficulty', difficulty),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 700),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style:
                                  Styles.headline3Style.copyWith(fontSize: 28),
                            ),
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(48),
                                boxShadow: [
                                  BoxShadow(
                                    color: Styles.primaryColor.withOpacity(.4),
                                    offset: const Offset(0, 4),
                                    blurRadius: 15,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/heart-blue.png',
                                  color: Styles.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        child: Text(
                          price,
                          style: Styles.headline3Style.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      FadeInUp(
                        duration: const Duration(milliseconds: 900),
                        child: Text(
                          'About',
                          style: Styles.headline2Style.copyWith(
                            color: Styles.textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1100),
                        child: Text(
                          description,
                          style: Styles.subtitle1Style,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          clipBehavior: Clip.none,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: FadeInLeft(
                                duration: const Duration(milliseconds: 1300),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: Styles.primaryColor,
                                        borderRadius: BorderRadius.circular(48),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.4),
                                            offset: const Offset(0, 4),
                                            blurRadius: 15,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          plantInfo[index].icon,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          plantInfo[index].title,
                                          style: Styles.subtitle2Style,
                                        ),
                                        Text(
                                          plantInfo[index].value,
                                          style: Styles.subtitle2Style.copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 30),
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                color: Styles.primaryColor.withOpacity(.4),
                                borderRadius: BorderRadius.circular(48),
                              ),
                              child: Center(
                                child: Image.asset(
                                    'assets/images/shopping-bag.png',
                                    color: Styles.primaryColor),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 270,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Styles.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Checkout',
                                    style: Styles.headline2Style
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget info(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            child: Text(
              title,
              style: Styles.textStyle.copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 4),
          FadeInUp(
            duration: const Duration(milliseconds: 700),
            child: Text(
              description,
              style: Styles.textStyle.copyWith(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
