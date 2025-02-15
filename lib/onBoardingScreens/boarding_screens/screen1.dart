import 'package:flutter/material.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen2.dart';

import '../onboarding_widgets/elv_btn.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "screen1";
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/boarding1.png"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Find Your Next \n Favorite Movie Here",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16),
                child: Text(
                  "Get access to a huge library of movies to suit all tastes. You will surely like it.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!
                      .copyWith(color: const Color.fromRGBO(255, 255, 255, 0.6)),
                ),
              ),

              ElvBtn(
                txt: "Explore Now",
                txtColor: Theme.of(context).canvasColor,
                btnColor: Theme.of(context).primaryColor,
                action:(){
                  Navigator.pushNamed(context, Screen2.routeName);
                },
              ),
              const SizedBox(height: 33,)
            ],
          ),
        )
      ],
    );
  }
}
