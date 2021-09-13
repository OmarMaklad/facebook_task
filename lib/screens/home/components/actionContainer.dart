import 'package:facebook_task/widgets/customTextFeild.dart';
import 'package:facebook_task/widgets/iconAndText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class ActionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: facebook_grey_color,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: facebook_dgrey_color),
                      image: DecorationImage(
                          image: AssetImage('assets/images/sarah.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CustomTextField(
                  hint: "what's in your mind",
                  hor: 0,
                )),
              ],
            ),
          ),
          Container(
            height: .7,
            width: double.infinity,
            color: facebook_dgrey_color,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: IconAndText(
                  tStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: kGryColor),
                  icon: Icons.video_camera_back,
                  text: "Live",
                  color: Colors.white,
                  ccolor: Colors.red,
                )),
                Container(
                  height: 25,
                  width: .5,
                  color: facebook_dgrey_color,
                ),
                Expanded(
                    child: IconAndText(
                    tStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: kGryColor),
                   icon: Icons.photo_library_outlined,
                  text: "Photo",
                  color: Colors.white,
                  ccolor: Colors.greenAccent,
                )),
                Container(
                  height: 25,
                  width: .5,
                  color: facebook_dgrey_color,
                ),
                Expanded(
                    child: IconAndText(
                      tStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: kGryColor),
                  icon: Icons.video_call_rounded,
                  text: "Room",
                  color: Colors.white,
                  ccolor: Colors.deepPurple,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
