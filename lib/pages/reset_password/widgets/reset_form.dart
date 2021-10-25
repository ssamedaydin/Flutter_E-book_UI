import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

class ResetForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.instance.kResetTopPadding,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "E-posta",
          hintStyle: TextStyle(color: kTextFieldColor),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
