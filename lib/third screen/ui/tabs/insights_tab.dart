import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_exam/third%20screen/third_screen_provider.dart';
import 'package:provider/provider.dart';

import 'carousel_items/hot_topics.dart';

class InsightsTab extends StatelessWidget {
  InsightsTab({super.key});
  late ThirdScreenProvider provider23;
  List<Widget> carouselSliderItems = [HotTopics(imagePath: "assets/third_screen/hotTopic1.png"), HotTopics(imagePath: "assets/third_screen/hotTopic2.png") ];
  @override
  Widget build(BuildContext context) {
    provider23 = Provider.of(context);
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 40),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/third_screen/Group.png")),
              Text("AliceCare", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, fontFamily: "Milonga"),)
            ],
          ),
          SizedBox(height: 30,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              prefixIcon: Icon(Icons.search),
              hintText: "Articles, Video, Audio and More,...",
              hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16)
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                child: InputChip(
                  side: BorderSide(color: Colors.grey),
                  backgroundColor: ThirdScreenProvider.isChipSelected[0]?Color(0xfff8e6f8):Colors.transparent,
                  onPressed: () {
                    provider23.changeChipState(0);
                  },
                  label: Semantics(
                    hint: 'Example Hint',
                    child: Text('Discover', style: TextStyle(color: ThirdScreenProvider.isChipSelected[0]?Colors.purple:Colors.grey),),
                  ),
                ),
              ),
              Expanded(
                child: InputChip(
                  side: BorderSide(color: Colors.grey),
                  backgroundColor: ThirdScreenProvider.isChipSelected[1]?Color(0xfff8e6f8):Colors.transparent,
                  onPressed: () {
                    provider23.changeChipState(1);
                  },
                  label: Semantics(
                    hint: 'Example Hint',
                    child: Text('News', style: TextStyle(color: ThirdScreenProvider.isChipSelected[1]?Colors.purple:Colors.grey),),
                  ),
                ),
              ),
              Expanded(
                child: InputChip(
                  side: BorderSide(color: Colors.grey),
                  backgroundColor: ThirdScreenProvider.isChipSelected[2]?Color(0xfff8e6f8):Colors.transparent,
                  onPressed: () {
                    provider23.changeChipState(2);
                  },
                  label: Semantics(
                    hint: 'Example Hint',
                    child: Text('Most Viewed', style: TextStyle(color: ThirdScreenProvider.isChipSelected[2]?Colors.purple:Colors.grey),),
                  ),
                ),
              ),
              Expanded(
                child: InputChip(
                  side: BorderSide(color: Colors.grey),
                  backgroundColor: ThirdScreenProvider.isChipSelected[3]?Color(0xfff8e6f8):Colors.transparent,
                  onPressed: () {
                    provider23.changeChipState(3);
                  },
                  label: Semantics(
                    hint: 'Example Hint',
                    child: Text('Saved', style: TextStyle(color: ThirdScreenProvider.isChipSelected[3]?Colors.purple:Colors.grey),),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(children: [
            Text("Hot Topics", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
            Spacer(),
            InkWell(
              onTap: (){},
                child: Text("See all", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.purple),)),
              InkWell(
                onTap: (){},
                  child: Icon(Icons.navigate_next, color: Colors.purple))
          ],),
          CarouselSlider(items: carouselSliderItems,
              options: CarouselOptions(viewportFraction: 0.9)
          ),
          SizedBox(height: 30,),
          Text("Get Tips", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15)
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image(image: AssetImage("assets/third_screen/Doctor.png")),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Connect with doctors & \nget suggestions", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("Connect now and get \nexpert insights ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                    SizedBox(height: 20,),
                    Container(
                      width: 100,
                        decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(10)),
                        child: TextButton(onPressed: (){},
                      child: Text("View detail", style: TextStyle(color: Colors.white),),
                    )
                    )

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 25,),
          Row(children: [
            Text("Cycle Phases and Period", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
            Spacer(),
            InkWell(
                onTap: (){},
                child: Text("See all", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.purple),)),
            InkWell(
                onTap: (){},
                child: Icon(Icons.navigate_next, color: Colors.purple))
          ],),
          SizedBox(height: 20,),

      ],
      ),
    );
  }
}
