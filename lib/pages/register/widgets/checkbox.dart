import 'package:book_app/constants/icons_constants.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  final String text;

  CheckBox({required this.text});

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _isSelect = !_isSelect;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: kDarkGreyColor),
                ),
                child: _isSelect ? Icon(IconsConstants.instance.iconCheck, size: 17, color: kGreen,) : null,
              ),
            ),
            SizedBox(width: 12,),
            Text(widget.text),
          ],
        ),
      ],
    );
  }
}
