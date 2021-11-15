import 'package:flutter/material.dart';

class AuthButton2 extends StatelessWidget {
  String label;
  Color color;
  AuthButton2({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        width: 280,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
