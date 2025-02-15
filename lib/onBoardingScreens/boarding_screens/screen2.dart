import 'package:flutter/material.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen3.dart';
import '../onboarding_widgets/elv_btn.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = "screen2";

  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset("assets/images/boarding2.png"),
        Image.asset("assets/images/gradient2.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.3,
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
                    Text("Discover Movies",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 24,),
                    Text(
                      "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400,color: Colors.white, ),
                    ),
                    const SizedBox(height: 24,),
                    ElvBtn(
                        txt: "Next",
                        txtColor: Theme.of(context).canvasColor,
                        btnColor: Theme.of(context).primaryColor,
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
