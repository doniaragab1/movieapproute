import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:movie_app_route/Screens/forget_password.dart';
import 'package:movie_app_route/Screens/register.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Login extends StatelessWidget {
  Login({super.key});

  static const String routeName = "Login Screen";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Image.asset(
                "assets/images/Logo.png",
                height: 120,
              )),
              SizedBox(
                height: 70,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    size: 31,
                    color: Theme.of(context).hintColor,
                  ),
                  label: Text(
                    "Email",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).indicatorColor,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    size: 24,
                    color: Theme.of(context).hintColor,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 31,
                    color: Theme.of(context).hintColor,
                  ),
                  label: Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).indicatorColor,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgetPassword.routeName);
                },
                child: Text("Forget Password?",
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.titleSmall),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // FireBaseManager.signInWithEmail(emailController.text, passwordController.text);
                    //await authProvider.initUser();
                    //Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName,(route) => false,);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 131),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text("Login",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t Have Account ? ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Register.routeName);
                      },
                      child: Text(
                        "Create One",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.titleSmall,
                      )),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 1,
                      endIndent: 11,
                      indent: 100,
                    ),
                  ),
                  Text("Or", style: Theme.of(context).textTheme.titleSmall),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 1,
                      endIndent: 100,
                      indent: 11,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 38,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).primaryColor),
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google_icon.png"),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Text("Login With Google",
                          style: Theme.of(context).textTheme.bodyMedium),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Center(
                child: ToggleSwitch(
                  activeBgColor: [Theme.of(context).primaryColor],
                  minWidth: 75.0,
                  minHeight: 30.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  totalSwitches: 2,
                  customIcons: [
                    Icon(FontAwesomeIcons.flagUsa),
                    Icon(MdiIcons.abjadArabic),
                  ],
                  iconSize: 21.0,
                  animate: true,
                  // with just animate set to true, default curve = Curves.easeIn
                  curve: Curves.bounceInOut,
                  // animate must be set to true when using custom curve
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
