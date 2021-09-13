import 'dart:async';

import 'package:facebook_task/data/cubit.dart';
import 'package:facebook_task/screens/home/components/postsList.dart';
import 'package:facebook_task/screens/home/components/storyContainer.dart';
import 'package:facebook_task/widgets/loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/actionContainer.dart';
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool? wait=false;

@override
  void initState() {
  Timer(Duration(seconds: 2),(){
   setState(() {
     wait=true;
   });
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  wait==false?Center(child: ColorLoader(radius: 20,dotRadius: 5,)):SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 1, width: double.infinity, color: facebook_dgrey_color,),
           ActionContainer(),
           StoryContainer(),
            PostsList(),
           ],
        )
    );
  }
}
