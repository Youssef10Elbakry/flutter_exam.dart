import 'package:flutter/cupertino.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_exam/second%20screen/second_screen_provider.dart';
import 'package:flutter_exam/second%20screen/ui/tabs/tab_bar_items/tab_bar_item.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  late SecondScreenProvider provider22;

  @override
  Widget build(BuildContext context) {
    provider22 = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Image(
                  image:
                      AssetImage("assets/second_screen/profile_pic_gym.png")),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Jade",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Ready to workout?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Spacer(),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -0, end: -1),
                badgeContent: Icon(
                  Icons.circle,
                  size: 2,
                  color: Colors.red,
                ),
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image(
                            image: AssetImage("assets/second_screen/Icon.png")),
                        Text(
                          "Heart Rate",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text("81",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18)),
                        Text("BPM",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 60,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.list_rounded,
                          color: Colors.blueGrey,
                        ),
                        Text(
                          "To-do",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text("32.5",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18)),
                        Text("%",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 60,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    )),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Colors.blueGrey,
                        ),
                        Text(
                          "Calo",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text("1000",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18)),
                        Text("Cal",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Workout Programs",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30,),
          // Expanded(
          //   child: DefaultTabController(
          //       length: 4,
          //       child: Scaffold(
          //         backgroundColor: Colors.transparent,
          //         appBar: AppBar(
          //           elevation: 0,
          //           backgroundColor: Colors.transparent,
          //           bottom: TabBar(
          //             padding: EdgeInsets.only(bottom: 10),
          //             indicatorColor: Colors.blueGrey,
          //             onTap: (int index){
          //               provider22.changeSelectedTabIndex(index);
          //             },
          //             tabs: [
          //               Text("All Type", style: TextStyle(color: SecondScreenProvider.selectedTabBarIndex == 0? Colors.blueGrey:Colors.grey, fontWeight: FontWeight.w400, fontSize: 16), ),
          //               Text("Full Body", style: TextStyle(color: SecondScreenProvider.selectedTabBarIndex == 1? Colors.blueGrey:Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),),
          //               Text("Upper", style: TextStyle(color: SecondScreenProvider.selectedTabBarIndex == 2? Colors.blueGrey:Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),),
          //               Text("Lower", style: TextStyle(color: SecondScreenProvider.selectedTabBarIndex == 3? Colors.blueGrey:Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),)
          //             ],
          //           ),
          //         ),
          //         body: TabBarView(
          //           children: [
          //             AllType(containerBackColor: Color(0xEAECF5)),
          //             AllType(containerBackColor: Colors.red),
          //             AllType(containerBackColor: Colors.blue),
          //             AllType(containerBackColor: Colors.green),
          //           ],
          //         ),
          //       )
          //   ),
          // )
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Scaffold(
                body: Column(
                  children: [
                    TabBar(
                      padding: EdgeInsets.only(bottom: 10),
                      indicatorColor: Colors.blueGrey,
                      labelPadding: EdgeInsets.only(bottom: 10),
                      onTap: (int index) {
                        provider22.changeSelectedTabIndex(index);
                      },
                      tabs: [
                        Text(
                          "All Type",
                          style: TextStyle(
                              color:
                                  SecondScreenProvider.selectedTabBarIndex == 0
                                      ? Colors.blueGrey
                                      : Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Text(
                          "Full Body",
                          style: TextStyle(
                              color:
                                  SecondScreenProvider.selectedTabBarIndex == 1
                                      ? Colors.blueGrey
                                      : Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Text(
                          "Upper",
                          style: TextStyle(
                              color:
                                  SecondScreenProvider.selectedTabBarIndex == 2
                                      ? Colors.blueGrey
                                      : Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Text(
                          "Lower",
                          style: TextStyle(
                              color:
                                  SecondScreenProvider.selectedTabBarIndex == 3
                                      ? Colors.blueGrey
                                      : Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          AllType(containerBackColor: Color(0xEAECF5)),
                          AllType(containerBackColor: Colors.red),
                          AllType(containerBackColor: Colors.blue),
                          AllType(containerBackColor: Colors.green),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
