import 'dart:async';
import 'dart:io';
import 'package:facebook_task/widgets/loader.dart';
import 'package:flutter/foundation.dart';
import 'package:facebook_task/data/cubit.dart';
import 'package:facebook_task/widgets/app_bar_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'home/home.dart';

class TabsScreens extends StatefulWidget {

  @override
  _TabsScreensState createState() => _TabsScreensState();
}

class _TabsScreensState extends State<TabsScreens> with SingleTickerProviderStateMixin{

  static tabSelected stab = tabSelected.home;
  static int? index;
  TabController? _tabController;


  @override
  void initState() {
    _tabController = new TabController(length: 6, vsync: this);
    super.initState();
  }


    final tabIcon = <Tab>[
    Tab(icon: Icon(Icons.home_outlined,color: kGryColor,),),
    Tab(icon: Icon(FontAwesomeIcons.users,color: kGryColor, ) ),
    Tab(icon: Icon(Icons.ondemand_video, color: kGryColor,)),
    Tab(icon: Icon(Icons.view_compact_outlined, color: kGryColor,)),
    Tab(icon: Icon(Icons.notifications_none_outlined,color: kGryColor,)),
    Tab(icon: Icon(Icons.menu,)),
  ];

   var Screens = <Widget>[
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }



   @override
  Widget build(BuildContext context) {
        return BlocProvider(
          lazy: false,
          create:(context) => PostCubit()..getPostData(),
          child: Scaffold(
              backgroundColor: facebook_dgrey_color,
              appBar: AppBar(
              title: Text('Facebook',style: headStyle,),
              backgroundColor: Colors.white,
              elevation: 0,
              actions: <Widget>[
                AppBarIcon(icon: FontAwesomeIcons.search, onTab: (){}),
                AppBarIcon(icon: FontAwesomeIcons.facebookMessenger, onTab: (){

                }),
              ],
              bottom: TabBar(
                 controller: _tabController,
                  onTap: (int? index) {
                    setState(() {
                      index == null ? index =0 : index = DefaultTabController.of(context)?.index;
                      print("hello $index");
                      if (index == 0) {
                        setState(() {
                          index =0 ;
                          stab = tabSelected.home;
                        });
                      }  else if(index == 1){
                        setState(() {
                          index =1;
                          stab = tabSelected.groups;

                        });
                      } else if (index == 2) {
                        stab = tabSelected.video;
                      }  else if (index == 3) {
                         stab = tabSelected.flag;
                      }  else if (index == 4) {
                         stab = tabSelected.notification;
                      }  else if (index == 5) {
                         stab = tabSelected.more;
                      }
                    });
                  },
                  dragStartBehavior: DragStartBehavior.start,
                  indicatorColor: facebook_blue_color,
                  indicatorWeight: 1.5,
                  unselectedLabelColor: facebook_icon_color,
                  tabs: tabIcon),
            ),
            body: TabBarView(
               controller: _tabController,
                children: Screens,
            )),
        );

  }
}

enum tabSelected{
  home,
  groups,
  video,
  flag,
  notification,
  more
}