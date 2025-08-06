import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {

  final TextEditingController controller;
  final String label;

  const Customtextfield({super.key,required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(label)),
      controller: controller,
    );
  }
}