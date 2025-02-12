import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
   ForgetPassword({super.key});
  static const String routeName = "Forget Password";
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          "Forget Password",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Image.asset("assets/images/Forgot password.png")),
            SizedBox(height: 24,),
            TextFormField(
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
            SizedBox(height: 24,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  // FireBaseManager.signInWithEmail(emailController.text, passwordController.text);
                  //await authProvider.initUser();
                  //Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName,(route) => false,);
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
                child: Text("Verify Email",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
