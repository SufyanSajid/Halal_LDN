import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Check2 extends StatefulWidget {
  const Check2({Key? key}) : super(key: key);

  @override
  State<Check2> createState() => _Check2State();
}

class _Check2State extends State<Check2> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            fillColor: MaterialStateProperty.resolveWith(getColor),
            focusColor: Colors.green,
            hoverColor: Colors.green,
            checkColor: Colors.white,
            value: timeDilation != 1.0,
            onChanged: (bool? value) {
              setState(() {
                timeDilation = value! ? 10.0 : 1.0;
              });
            }),
        SizedBox(
          width: 10,
        ),
        Text(
          'Remember Me',
          style: TextStyle(
              fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
