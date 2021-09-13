import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class IconAndText extends StatelessWidget {
  final TextStyle? tStyle;
  final IconData? icon;
  final Color? ccolor;
  final String? text;
  final Color? color;

  const IconAndText({Key? key, this.tStyle, this.icon, this.ccolor, this.text, this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
       decoration: BoxDecoration(
         color: color,
         borderRadius: BorderRadius.all(Radius.circular(20))
       ),
       child: Center(
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right :8),
                child: Icon(icon, color: ccolor,),
              ),
              Text(text!, style: tStyle,)
           ],
         ),
       ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('color', color));
  }
}