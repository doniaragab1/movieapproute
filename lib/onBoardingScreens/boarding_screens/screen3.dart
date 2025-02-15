import 'package:flutter/material.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen2.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen3.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen4.dart';
import '../onboarding_widgets/elv_btn.dart';

class Screen3 extends StatelessWidget {
  static const String routeName = "screen3";

  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset("assets/images/boarding3.png"),
        Image.asset("assets/images/gradient3.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.38,
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
                    Text("Explore All Genres",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 24,),
                    Text(
                      "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400,color: Colors.white, ),
                    ),
                    const SizedBox(height: 24,),
                    ElvBtn(
                        txt: "Next",
                        txtColor: Theme.of(context).canvasColor,
                        btnColor: Theme.of(context).primaryColor,
                        action: () {
                          Navigator.pushNamed(context, Screen4.routeName);
                        }),
                    const SizedBox(height: 16,),
                    ElvBtn(
                        txt: "Back",
                        txtColor: Theme.of(context).primaryColor,
                        btnColor: Colors.transparent,
                        action: () {
                          Navigator.pushNamed(context, Screen2.routeName);
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
