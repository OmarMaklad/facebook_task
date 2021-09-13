import 'package:flutter/material.dart';
import '../constants.dart';

class AppBarIcon extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onTab;
  const AppBarIcon({Key? key, this.icon, this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: facebook_grey_color,
        ),
        child: Center(
          child: Icon(icon, color: Colors.black,size: 20,),
        ),
      ),
    );
  }
}
