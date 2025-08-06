import 'package:flutter/material.dart';

class Buttoncustom extends StatelessWidget {

  final String mytext;
  final Color mytextcolor;
  final VoidCallback onPressed;
  
  const Buttoncustom({
  super.key, 
  required this.mytext, 
  required this.mytextcolor, 
  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(mytext, style: TextStyle(color: mytextcolor),
    ),);
  }
}