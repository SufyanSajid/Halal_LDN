import 'package:flutter/material.dart';

class LetsGo extends StatelessWidget {
  const LetsGo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
      height: 60,
      padding: EdgeInsets.all(18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(6, 200, 127, 1),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: const Text(
        'Lets Go',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
