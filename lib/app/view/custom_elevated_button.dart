import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.size,
    required this.color,
    required this.textColor,
  });

  final String title;
  final VoidCallback onTap;
  final Size size;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: color,
        minimumSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ), // Background color
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }
}
