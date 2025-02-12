import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:movie_app_route/Screens/login.dart';
import 'package:movie_app_route/api_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Register extends StatefulWidget {
  Register({super.key});

  static const String routeName = "Register Screen";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController repasswordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  int selectedAvatar = 0;

  var formKey = GlobalKey<FormState>();

  List<String> avatars = [
   "gamer (1)", "gamer (2)" , "gamer (3)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .canvasColor,
        iconTheme: IconThemeData(color: Theme
            .of(context)
            .primaryColor),
        title: Text(
          "Register",
          style: Theme
              .of(context)
              .textTheme
              .titleSmall,
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme
          .of(context)
          .canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    SizedBox(
                      height: 160,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder:( context, index) {
                                    return GestureDetector(onTap: () {
                                      selectedAvatar = index;
                                      setState(() {

                                      });
                                    } ,child: avatarWidget(selectedAvatar, index));
                                    }, separatorBuilder: (context, index) {
                                      return SizedBox(width: 24);
                                    }, itemCount: avatars.length),
                      ),
                    ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Name is Required";
                } else {
                  return null;
                }
              },
              controller: nameController,
              style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.contact_mail_rounded,
                  size: 25,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                label: Text(
                  "Name",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
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
                fillColor: Theme
                    .of(context)
                    .indicatorColor,
                hintStyle: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is Required";
                } else {
                  return null;
                }
              },
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_rounded,
                  size: 31,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                label: Text(
                  "Email",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
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
                fillColor: Theme
                    .of(context)
                    .indicatorColor,
                hintStyle: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is Required";
                } else if (value.length < 6) {
                  return "Password must be at least 6 characters";
                } else {
                  return null;
                }
              },
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 24,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 31,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                label: Text(
                  "Password",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
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
                fillColor: Theme
                    .of(context)
                    .indicatorColor,
                hintStyle: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is Required";
                } else if (value.length < 6) {
                  return "Password must be at least 6 characters";
                } else if (value != passwordController.text) {
                  return "Password does not match";
                } else {
                  return null;
                }
              },
              obscureText: true,
              controller: repasswordController,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility_off,
                  size: 24,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 31,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                label: Text(
                  "Password",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
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
                fillColor: Theme
                    .of(context)
                    .indicatorColor,
                hintStyle: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              style: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Number is Required";
                } else if (value.length < 10) {
                  return "Number must be 10 digits";
                } else {
                  return null;
                }
              },
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.call_outlined,
                  size: 31,
                  color: Theme
                      .of(context)
                      .hintColor,
                ),
                label: Text(
                  "Phone Number",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
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
                fillColor: Theme
                    .of(context)
                    .indicatorColor,
                hintStyle: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Map data = {
                      'email': emailController.text.toString(),
                      'password': passwordController.text.toString()
                    };
                    ApiManager.createAccount();

                    Navigator.pushNamed(context, Login.routeName);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme
                      .of(context)
                      .primaryColor,
                  padding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 131),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                child: Text("Create Account",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account ? ",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, Login.routeName);
                    },
                    child: Text(
                      "Login",
                      textAlign: TextAlign.end,
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleSmall,
                    )),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: ToggleSwitch(
                activeBgColor: [Theme
                    .of(context)
                    .primaryColor
                ],
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
    ),)
    ,
    );
  }

  Widget avatarWidget(int selectedAvatar, int index) {
    return selectedAvatar == index ? Container(height: 161,
      width: 158,
      child: Image.asset("assets/images/${avatars[index]}.png",fit: BoxFit.fill),) : Container(
      height: 94,
      width: 94,
      child: Image.asset("assets/images/${avatars[index]}.png",fit: BoxFit.fitWidth,),);
  }
}
