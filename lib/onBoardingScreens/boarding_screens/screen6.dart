import 'package:flutter/material.dart';
import 'package:movie_app_route/Home%20Screens/home_Page.dart';
import 'package:movie_app_route/cache/cache_helper.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen1.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen5.dart';
import '../onboarding_widgets/elv_btn.dart';

class Screen6 extends StatelessWidget {
  static const String routeName = "screen6";
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
            height: size.height * 0.78,
            child: Image.asset(
              "assets/images/boarding6.png", width: double.infinity,
              fit: BoxFit.cover,)
        ),
        SizedBox(
            height: size.height * 0.78,
            child: Image.asset(
              "assets/images/gradient6.png", width: double.infinity,
              fit: BoxFit.cover,)
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.25,
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
                    Text("Start Watching Now",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 24,),
                    ElvBtn(
                        txt: "Finish",
                        txtColor: Theme.of(context).canvasColor,
                        btnColor: Theme.of(context).primaryColor,
                        action: () {
                          CacheHelper.saveEligibility();
                          Navigator.pushNamed(context, HomePage.routeName);
                        }),
                    const SizedBox(height: 16,),
                    ElvBtn(
                        txt: "Back",
                        txtColor: Theme.of(context).primaryColor,
                        btnColor: Colors.transparent,
                        action: () {
                          Navigator.pushNamed(context, Screen5.routeName);
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
