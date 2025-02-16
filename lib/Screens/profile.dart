import 'package:flutter/material.dart';
import 'package:movie_app_route/Screens/edit_profile.dart';

class Profiletab extends StatefulWidget {
   Profiletab({super.key});

  static const String routeName = "Profile Tab";

  @override
  State<Profiletab> createState() => _ProfiletabState();
}

class _ProfiletabState extends State<Profiletab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: SafeArea(
          child: Column(
            children: [
              Visibility(
                visible: selectedIndex == 0? true : false,
                child: Container(
                  color: Theme.of(context).indicatorColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 52,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/gamer (2).png",
                              height: 118,
                            ),
                            SizedBox(
                              width: 75,
                            ),
                            Column(
                              children: [
                                Text(
                                  "12",
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  "Wish List",
                                  style: Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Text(
                                  "12",
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  "History",
                                  style: Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "John Safwat",
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 56,
                              width: 253,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, EditProfile.routeName);
                                },
                                child: Text(
                                  "Edit Profile",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Exit",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .hintColor),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(
                                          Icons.exit_to_app_rounded,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    // padding: EdgeInsets.symmetric(horizontal: 35),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    backgroundColor: Color(0XFFE82626),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),

                      ],
                    ),

                  ),
                ),
              ),
              Container(
                color: Theme.of(context).indicatorColor,
                child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.menu,
                        color: Theme.of(context).primaryColor,
                      ),
                      text: "Watch List",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.file_copy,
                        color: Theme.of(context).primaryColor,
                      ),
                      text: "History",
                    ),
                  ],
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).hintColor),
                  unselectedLabelColor: Theme.of(context).hintColor,
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  onTap: (value) {
                    selectedIndex = value;
                    setState(() {

                    });
                  },
                ),
              ),
              //SizedBox(height: 170,),
              selectedIndex == 0? SizedBox(height: 170, child: Image.asset("assets/images/Popcorn.png"),) :
              Expanded(
                child: GridView.count(scrollDirection: Axis.vertical,crossAxisCount: 3,children: List.generate(12, (index){
                 return Image.asset("assets/images/Popcorn.png");
                }),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
