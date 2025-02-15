import 'package:flutter/material.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen3.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen4.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen5.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen6.dart';
import '../onboarding_widgets/elv_btn.dart';

class Screen5 extends StatelessWidget {
  static const String routeName = "screen5";

  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset("assets/images/boarding5.png"),
        Image.asset("assets/images/gradient5.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.39,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rate, Review, and Learn",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 24,),
                    Text(
                      "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400,color: Colors.white, ),
                    ),
                    const SizedBox(height: 24,),
                    ElvBtn(
                        txt: "Next",
                        txtColor: Theme.of(context).canvasColor,
                        btnColor: Theme.of(context).primaryColor,
                        action: () {
                          Navigator.pushNamed(context, Screen6.routeName);
                        }),
                    const SizedBox(height: 16,),
                    ElvBtn(
                        txt: "Back",
                        txtColor: Theme.of(context).primaryColor,
                        btnColor: Colors.transparent,
                        action: () {
                          Navigator.pushNamed(context, Screen4.routeName);
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
