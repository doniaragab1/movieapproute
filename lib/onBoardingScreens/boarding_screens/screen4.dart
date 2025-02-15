import 'package:flutter/material.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen3.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen4.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen5.dart';
import '../onboarding_widgets/elv_btn.dart';

class Screen4 extends StatelessWidget {
  static const String routeName = "screen4";
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset("assets/images/boarding4.png"),
        Image.asset("assets/images/gradient4.png"),
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
                    Text("Create Watch lists",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 24,),
                    Text(
                      "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400,color: Colors.white, ),
                    ),
                    const SizedBox(height: 24,),
                    ElvBtn(
                        txt: "Next",
                        txtColor: Theme.of(context).canvasColor,
                        btnColor: Theme.of(context).primaryColor,
                        action: () {
                          Navigator.pushNamed(context, Screen5.routeName);
                        }),
                    const SizedBox(height: 16,),
                    ElvBtn(
                        txt: "Back",
                        txtColor: Theme.of(context).primaryColor,
                        btnColor: Colors.transparent,
                        action: () {
                          Navigator.pushNamed(context, Screen3.routeName);
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
