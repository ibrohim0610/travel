import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_login/utils/constants.dart';


class AppBarLogin extends StatelessWidget implements PreferredSizeWidget{
  const AppBarLogin({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        padding: EdgeInsets.all(18),
        width: 28,
        height: 28,
        child: SvgPicture.asset("asset/icons/back-arrow.svg",
        color: Colors.green,
        ),
      ),
      title: Text(text,
      style: TextStyle(
        color: AppColors.TexTColor,
      fontSize: 24,
      fontWeight: FontWeight.bold
      ),
      ),
    );
  }
  @override
  Size get preferredSize =>
      const Size.fromHeight(56.0);
}


