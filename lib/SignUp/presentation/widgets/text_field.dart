import 'package:flutter/material.dart';
import 'package:travel_login/utils/constants.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.TextFieldColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(12),),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.TextFieldColor,),
            borderRadius: BorderRadius.circular(12)),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.grey.withValues(alpha: 0.5),
          fontWeight: FontWeight.w400,
          fontSize: 14
        )
      ),
    );
  }
}

