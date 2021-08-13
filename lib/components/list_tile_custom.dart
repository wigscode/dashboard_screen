import 'package:dashboard_screen/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTileCustom extends StatelessWidget {
  final Color bgColor;
  final String pathIcon, title, subTitle;
  const ListTileCustom({
    Key? key,
    required this.bgColor,
    required this.pathIcon, required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: SvgPicture.asset("assets/icons/"+pathIcon,
          width: 21.88,
          height: 10.94,
          fit: BoxFit.scaleDown,
        ),
        
      ),
      title: Text(title,
        style: textBold2,
      ),
      subtitle: Text(subTitle,
        style: textBold,
      ),
    );
  }
}