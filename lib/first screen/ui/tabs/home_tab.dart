import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_exam/first%20screen/first_screen_provider.dart';
import 'package:flutter_exam/first%20screen/ui/tabs/carousel_components/carousel_child.dart';
import 'package:flutter_exam/first%20screen/ui/tabs/carousel_components/carousel_indicator.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late FirstScreenProvider provider12;
  List<Widget> carouselItems = [CarouselChild(color: Colors.green.shade100), CarouselChild(color: Colors.red,), CarouselChild(color: Colors.blue,)];
  @override
  Widget build(BuildContext context) {
    provider12 = Provider.of(context);
    return Padding(
      padding: EdgeInsets.all(20.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Row(
            children: [
              const Image(image: AssetImage("assets/logo.png")),
              const SizedBox(width: 10,),
              const Text("Moody", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),),
              const Spacer(),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -0, end: -1),
                badgeContent: const Icon(Icons.circle, size: 2, color: Colors.red,),
                child: const Icon(Icons.notifications_none, size: 30,),
              )
            ],
          ),
          const SizedBox(height: 20,),
          const Text("Hello, Sara Rose", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
          const SizedBox(height: 20,),
          const Text("How are you feeling today", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
          const SizedBox(height: 20,),
          const Row(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                    child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image(image: AssetImage("assets/Frame (1).png"),),
                )),
              ),
              Expanded(
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage("assets/Group.png"),),
                    )),
              ),
              Expanded(
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage("assets/love.png"),),
                    )),
              ),
              Expanded(
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage("assets/frame.png"),),
                    )),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const Text("Features", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              const Spacer(),
              TextButton(onPressed: (){}, child: const Text("See more ", style: TextStyle(color: Colors.green, fontSize: 14),)),
              IconButton(icon: const Icon(Icons.navigate_next), onPressed: () {},),
            ],

          ),


          CarouselSlider(
              items: carouselItems,
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  provider12.changeSelectedSlider(index);
                },
              viewportFraction: 1
            ),
          ),
          Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselIndicator(isInThisIndex: FirstScreenProvider.currentCarouselIndex == 0),
              CarouselIndicator(isInThisIndex: FirstScreenProvider.currentCarouselIndex == 1),
            CarouselIndicator(isInThisIndex: FirstScreenProvider.currentCarouselIndex == 2)


            ],
          ),),
          Spacer(),
          Row(
            children: [
              const Text("Exercises", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              const Spacer(),
              TextButton(onPressed: (){}, child: const Text("See more ", style: TextStyle(color: Colors.green, fontSize: 14),)),
              IconButton(icon: const Icon(Icons.navigate_next), onPressed: () {},),
            ],
          ),
          Spacer(flex: 1,),
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[50],
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/relaxation.png")),
                          Text("Relaxation")
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink[50],
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/meditation.png")),
                          Text("Meditation")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/breathing.png")),
                        Text("Breathing")
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30,),
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/yoga.png")),
                        Text("Yoga")
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
          ),
        ],
      ),
    );
  }
}
