import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Please fill your email address";
          }
        },
        decoration: InputDecoration(
          labelText: "Email Address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
