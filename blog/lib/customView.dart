import 'package:flutter/material.dart';

class CustomEditText extends StatelessWidget {
  final FormFieldSetter frmSaved;
  final bool bSecure;
  final String sLabel, sError;
  final TextInputType inputType;

  CustomEditText({
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

class CustomButton extends StatelessWidget {
  final String sText;
  final Color cTextColor, cBackgroundColor;
  final VoidCallback callback;

  CustomButton({
    this.sText,
    this.cTextColor = Colors.white,
    this.cBackgroundColor = Colors.blue,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: callback,
        color: cBackgroundColor,
        child: Text(
          sText,
          style: TextStyle(color: cTextColor),
        ),
      ),
    );
  }
}
