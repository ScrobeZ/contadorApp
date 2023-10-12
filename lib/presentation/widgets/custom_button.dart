import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  
  final VoidCallback? onPressed;
  final IconData icon;

  const CustomButton({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed, 
      child: Icon(icon),
      );

  }

}