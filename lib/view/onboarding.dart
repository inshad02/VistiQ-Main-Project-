import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vistiq/view/auth/login.dart';
import 'package:vistiq/view/Intro%20Pages/intro1.dart';
import 'package:vistiq/view/Intro%20Pages/intro2.dart';
import 'package:vistiq/view/Intro%20Pages/intro3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
          ),
          Container(
              alignment: const Alignment(0, 0.75),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const WormEffect(
                    spacing: 8.0,
                    radius: 5.0,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.indigo),
                onDotClicked: (index) {
                  _pageController.jumpToPage(index);
                },
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    onLastPage
                        ? const Text("")
                        : GestureDetector(
                            child: const Text("Skip",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: 'Poppins SemiBold')),
                            onTap: () {
                              _pageController.jumpToPage(2);
                            },
                          ),
                    onLastPage
                        ? GestureDetector(
                            // child: const Text("Done",
                            //     style: TextStyle(
                            //         fontSize: 18,
                            //         color: Colors.white,
                            //         fontFamily: 'Poppins SemiBold')
                            child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  "assets/icons/check.png",
                                  cacheHeight: 30,
                                )),

                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const Login()));
                            },
                          )
                        : GestureDetector(
                            child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  "assets/icons/next.png",
                                  cacheHeight: 30,
                                )),
                            onTap: () {
                              _pageController.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.easeIn);
                            },
                          )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
