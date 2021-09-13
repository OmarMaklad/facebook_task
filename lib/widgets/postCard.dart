import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class PostCard extends StatelessWidget {
  final String? userImage;
  final String? userName;
  final String? image;
  final List? images;
  final String? date;
  final String? body;
  final String? numOfReactions;
  final String? reactions;
  final Widget?  child;
  final int?  type;

  const PostCard({Key? key, this.userImage, this.userName, this.image, this.date, this.body, this.numOfReactions, this.reactions, this.child, this.type, this.images}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final CarouselController _controller = CarouselController();
    return Padding(
      padding: const EdgeInsets.only(bottom :8.0),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: facebook_dgrey_color,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(userImage!),fit: BoxFit.cover)
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8),
                            child: Text(userName??" ",style:GoogleFonts.roboto(
                              textStyle: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 16)
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal :8.0),
                            child: Row(
                              children: [
                                Text(date!,style:GoogleFonts.roboto(
                                    textStyle: TextStyle(fontWeight: FontWeight.w400,
                                        color: facebook_dgrey_color,
                                        fontSize: 13)
                                ),),
                                Icon(Icons.language,color: facebook_dgrey_color,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.more_horiz, color: Colors.black,)
                ],
              ),
            ),
          type==2?SizedBox():Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(body!,style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)
            ),),
          ),
          type==0?SizedBox():type==1?Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover)
            ),
          ):CarouselSlider.builder(
            itemCount:images!.length,
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
            ),
            itemBuilder: (context,index,g){
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(images?[index]),
                  ) ,
                ),
              );
            },
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                  Expanded(child: SizedBox(width: double.infinity,)),
                    Padding(
                      padding: const EdgeInsets.only(top :16.0,right: 8.0),
                      child: Text(numOfReactions!,style:TextStyle(color: kGryColor,fontSize: 13),),
                    ),
                  ],
                ),
                Positioned(
                  left: 2,
                  child: Padding(
                  padding: const EdgeInsets.only(left :8.0,top: 12.0),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: facebook_dgrey_color,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 2),
                      image: DecorationImage(image: AssetImage('assets/emoji/emoji1.png'),fit: BoxFit.cover)
                    ),
                  ),
                )),
                Positioned(
                  left: 15,
                 child: Padding(padding: const EdgeInsets.only(left :8.0,top: 12.0),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: facebook_dgrey_color,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2),
                        image: DecorationImage(image: AssetImage('assets/emoji/emoji.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                )),
                Positioned(
                    left: 28,
                    child: Padding(padding: const EdgeInsets.only(left :8.0,top: 12.0),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: facebook_dgrey_color,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 2),
                            image: DecorationImage(image: AssetImage('assets/emoji/emoji2.png'),fit: BoxFit.cover)
                        ),
                      ),
                    )),
                Positioned(
                    left: 65,
                    child: Padding(padding: const EdgeInsets.only(left :0.0,top: 15.0),
                      child: Text(reactions!, style: TextStyle(fontSize: 13,color: kGryColor),)
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(width: .5,color: facebook_dgrey_color.withOpacity(.4))
              )
            ),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(children: <Widget>[
                        IconButton(icon: Icon(FontAwesomeIcons.thumbsUp, color: kGryColor,), onPressed: (){}),
                        Text("Like",style: TextStyle(fontWeight: FontWeight.w400,color: kGryColor),)
                      ],),
                    Row(children: <Widget>[
                        IconButton(icon: Icon(Icons.messenger_outline_outlined, color: kGryColor,), onPressed: (){}),
                        Text("Comment",style: TextStyle(fontWeight: FontWeight.w400,color: kGryColor),)
                      ],),
                    Row(children: <Widget>[
                        IconButton(icon: Icon(Icons.share,color: kGryColor,), onPressed: (){}),
                        Text("Share",style: TextStyle(fontWeight: FontWeight.w400,color: kGryColor),)
                      ],)
                  ],
                ),
          ),

           child!
          ],
        ),
      ),
    );
  }
}
