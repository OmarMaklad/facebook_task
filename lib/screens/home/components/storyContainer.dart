import 'dart:io';

import 'package:facebook_task/widgets/AnimatedWidgets.dart';
import 'package:facebook_task/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StoryContainer extends StatelessWidget {
  const StoryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
     List<String> story=[
      "assets/images/1.jpg",
      "assets/images/2.jpeg",
      "assets/images/3.jpg",
      "assets/images/1.jpg",
      "assets/images/2.jpeg",
      "assets/images/3.jpg",
    ];
    return  Container(
      height: height*.3,
      // Platform.isAndroid?height*.3:270,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      color: Colors.white,
      child: AnimatedWidgets(
        duration: 2,
        virticaloffset: -50,
        horizontalOffset: 100,
        child: ListView.builder(
            addAutomaticKeepAlives: true,
            scrollDirection: Axis.horizontal,
            itemCount: story.length,
            itemBuilder: (context, int index){
              return StoryCard(
                  profileImage: "assets/images/photo.jpg",
                  storyImage: story[index],
                  isMe: index == 0 ? true : false,
                  userName: index == 0 ? "Create Story" : "omar"
              );
            }),
      ),
    );
  }
}
