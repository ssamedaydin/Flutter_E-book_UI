import 'package:book_app/constants/sizes_constants.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:book_app/constants/extension_context.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function onTapp;
  PrimaryButton({required this.buttonText, required this.onTapp});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        onTapp();
      },
      child: Container(
        alignment: Alignment.center,
        height: context.dynamicMultiHeight(0.06),
        width: Sizes.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: kPrimaryColor,
        ),
        child: Text(buttonText, style: textButton.copyWith(color: kWhiteColor),),
      ),
    );
  }
}
