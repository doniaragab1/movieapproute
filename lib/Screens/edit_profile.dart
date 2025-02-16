import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  static const String routeName = "EditProfile";

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  int selectedAvatar = 1;

  var formKey = GlobalKey<FormState>();

  List<String> avatars = [
    "gamer (1)", "gamer (2)", "gamer (3)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .canvasColor,
        appBar: AppBar(
          centerTitle: true, title: Text("Pick Avatar", style: Theme
            .of(context)
            .textTheme
            .titleSmall,), iconTheme: IconThemeData(color: Theme
            .of(context)
            .primaryColor), backgroundColor: Theme
            .of(context)
            .canvasColor,),
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
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: GestureDetector(onTap: () {
                          pickAvatar(context);
                        },
                            child: Image.asset(
                                "assets/images/gamer (${selectedAvatar}).png")),
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
                    SizedBox(height: 30,),
                    Row(children: [
                      Text("Reset Password", style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,)
                    ],),
                    SizedBox(height: 200,),


                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFE82626),
                              padding:
                              EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 131),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            child: Text("Delete Account",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Theme
                                    .of(context)
                                    .hintColor)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme
                                  .of(context)
                                  .primaryColor,
                              padding:
                              EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 131),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            child: Text("Update Data",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyMedium),
                          ),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),)
    );
  }

  Widget avatarWidget(int selectedAvatar, int index) {
    return selectedAvatar == index
        ? Container(height: 161,
      width: 158,
      child: Image.asset(
          "assets/images/${avatars[index]}.png", fit: BoxFit.fill),)
        : Container(
      height: 94,
      width: 94,
      child: Image.asset(
        "assets/images/${avatars[index]}.png", fit: BoxFit.fitWidth,),);
  }

  pickAvatar(context) {
    showModalBottomSheet(context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24), color: Theme
                .of(context)
                .indicatorColor),
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.5,
            child: GridView.count(
              crossAxisCount: 3, children: List.generate(9, (index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(

                  onTap: () {
                    selectedAvatar = index;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: selectedAvatar == index? Theme.of(context).primaryColor : Colors.transparent,borderRadius: BorderRadius.circular(20),border: Border.all(color: Theme.of(context).primaryColor)),
                    child: Image.asset(
                      "assets/images/gamer (${index}).png", width: 85, height: 85,),
                  ),
                ),
              );
            }),),
          ),
        );
      },);
  }
}
