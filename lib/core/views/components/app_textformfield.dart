import 'package:flutter/material.dart';

class AppTextformfield extends StatelessWidget {
  AppTextformfield( {super.key, this.controller,required this.label, this.filled=true, this.isPassword=false, this.icon, this.horizontal=15});
  String label;
  bool filled;
  bool isPassword;
  Widget? icon;
  double horizontal;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal,vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          suffixIcon: icon,
          labelText: label,
          filled: true,
          fillColor: filled ?Colors.grey[100]:null,
          border: OutlineInputBorder(
            // borderSide: BorderSide(color: Colors.teal, style: BorderStyle.solid, width: 55),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
