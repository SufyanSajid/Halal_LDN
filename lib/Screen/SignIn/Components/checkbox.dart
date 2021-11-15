import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RememberCheckBox extends StatefulWidget {
  const RememberCheckBox({Key? key}) : super(key: key);

  @override
  State<RememberCheckBox> createState() => _RememberCheckBoxState();
}

class _RememberCheckBoxState extends State<RememberCheckBox> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            fillColor: MaterialStateProperty.resolveWith(getColor),
            focusColor: Colors.white,
            hoverColor: Colors.white,
            checkColor: Colors.green,
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
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
