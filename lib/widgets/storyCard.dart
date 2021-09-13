import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class StoryCard extends StatelessWidget {
  final String? profileImage;
  final String? storyImage;
  final bool? isMe;
  final String? userName;
  final String? os;

  const StoryCard({Key? key, this.isMe, this.profileImage, this.userName, this.storyImage, this.os}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    return Container(
      width:height*.13,
      // Platform.isAndroid?height*.13:130,
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: facebook_grey_color,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: isMe==true?1.5:0,color: facebook_dgrey_color),
        image:isMe==true?null: DecorationImage(image: AssetImage(storyImage!),
        fit: BoxFit.cover)
      ),
      child: isMe==true?
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height:height*.2,
            // Platform.isAndroid?height*.2:170,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  height:height*.17,
                  // Platform.isAndroid?height*.17:140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage(profileImage!),
                          fit: BoxFit.cover)
                  ),

                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: facebook_blue_color,
                        shape: BoxShape.circle,
                      border: Border.all(width: 2,color: Colors.white)
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 30,),

                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 15),
            child: Text("Create story",style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 14),),
          ),
        ],
      )
     :Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: facebook_blue_color, width: 2),
                  image: DecorationImage(image: AssetImage(profileImage!),
                      fit: BoxFit.cover)
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(userName!,style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
          ),
        ],
      ),
    );
  }
}




