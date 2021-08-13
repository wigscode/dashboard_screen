import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {

  final double mLeft, mRight, width, height;
  final Widget child;
  

  const CardCustom({
    Key? key, required this.mLeft,
    required this.mRight,
    required this.width,
    required this.height,
    required this.child,
    
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(mLeft, 3, mRight, 3),
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFA3014F).withOpacity(0.05),
            offset: const Offset(0,9),
            blurRadius: 30,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: const Color(0xFFB2036C).withOpacity(0.03),
            offset: const Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0
          )
        ]
      ),
      child: child,
    );
  }
}