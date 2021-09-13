import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final bool? label;
  final TextInputType? type;
  final Function(String?)? onsave;
  final String? Function(String?)? valid;
  final AutovalidateMode? validationMode;
  final IconData? icon;
  final IconData? eIcon;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final IconData? dIcon;
  final  FocusNode? focus;
  final bool? read;
  final bool? flag;
  final bool? line;
  final VoidCallback? edit;
  final bool? isEdit;
  final double? hor;

  CustomTextField({ this.hint, this.onsave, this.onTap,
    this.icon, this.type,  this.valid,  this.controller, this.focus, this.dIcon, this.label, this.read, this.eIcon, this.edit, this.isEdit, this.line, this.flag, this.hor, this.validationMode,});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool _isHidden = true;
  void _visibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:widget.hor==null?10:widget.hor??0,vertical: 8),
      child: SizedBox(
         height:widget.line==true?100:37,
        child: TextFormField(
          onTap: widget.onTap,
          validator: widget.valid,
          controller: widget.controller,
          cursorColor: kPrimaryColor,
          focusNode: widget.focus,
          readOnly: widget.read==true?true:false,
          maxLines: widget.line==true?8:1,
          obscureText: widget.icon == Icons.lock_outline ? _isHidden : false,
          keyboardType:widget.type,
          onChanged: (widget.onsave),
          style: TextStyle(fontSize: 14,color: kBColor),
          decoration: InputDecoration(
            hintText: widget.hint,
            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical:5),
             prefixIcon: widget.dIcon!=null?Icon(widget.dIcon,color: kGryColor,):null,
            labelText: widget.label==true?widget.hint:null,
            icon: widget.isEdit==true?Icon(Icons.edit):null,
            labelStyle: TextStyle(fontSize: 14,color:kGryColor,fontFamily: "dinnextl medium"),
            hintStyle: TextStyle(fontSize:widget.line==true?12: 14,color: kBlackColor,fontWeight: FontWeight.w500),
            suffixIcon: widget.icon == Icons.lock_outline
                ? IconButton(
              onPressed: _visibility,
              alignment: Alignment.center,
              icon: _isHidden
                  ? Icon(Icons.visibility_off,color: kBColor,)
                  : Icon(Icons.visibility,color: kPrimaryColor,),
            )
                : Icon(widget.icon,color: kBlackColor,size: 20,),
            filled: true,
            fillColor: Colors.white,
            // prefixText: widget.hint,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:widget.line==true?kBColor:facebook_dgrey_color,width: 1),
              borderRadius: BorderRadius.circular(widget.line==true?20:20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: facebook_dgrey_color,width:1),
              borderRadius: BorderRadius.circular(widget.line==true?20:20),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(widget.line==true?20:20),
            ),
          ),
        ),
      ),
    );
  }
}
