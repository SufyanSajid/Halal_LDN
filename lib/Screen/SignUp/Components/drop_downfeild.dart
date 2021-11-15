import 'package:flutter/material.dart';

class DropDownField extends StatefulWidget {
  const DropDownField({Key? key}) : super(key: key);

  @override
  _DropDownFieldState createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  final items = ['item1', 'item2', 'item3', 'item4', 'Item5'];

  String? value1;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.green),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: value1,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.green,
          ),
          isExpanded: true,
          items: items.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() {
            value1 = value as String;
          }),
        ),
      ),
    );
  }
}
