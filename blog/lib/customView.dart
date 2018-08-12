import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final FormFieldSetter frmSaved;
  final bool bSecure;
  final String sLabel, sError;
  final TextInputType inputType;

  EditText({
    this.sLabel,
    this.sError,
    this.frmSaved,
    this.inputType,
    this.bSecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        onSaved: frmSaved,
        obscureText: bSecure,
        validator: (value) {
          if (value.isEmpty) {
            return sError;
          }
        },
        decoration: InputDecoration(
          labelText: sLabel,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        keyboardType: inputType,
      ),
    );
  }
}
