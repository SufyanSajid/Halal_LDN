import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  String label;

  FormTextField({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          decoration: InputDecoration(
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
