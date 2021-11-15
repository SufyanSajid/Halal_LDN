import 'package:flutter/material.dart';

class IconFormFeild extends StatelessWidget {
  String label;
  IconData icon;

  IconFormFeild({required this.label, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 50,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38),
          // border: Border.all(
          //   width: 2,
          //   color: Colors.green,
          // ),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Colors.green,
            ),
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide(
                color: Colors.green.shade400,
                width: 5,
              ),
            ),
            labelText: label,
          ),
          textInputAction: TextInputAction.next,
          // onFieldSubmitted: (_) {
          //   FocusScope.of(context).requestFocus(_passFocusNode);
          // },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please provide Value';
            }
            return null;
          },
        ),
      ),
    );
  }
}
