import 'package:book_app/constants/sizes_constants.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:book_app/constants/extension_context.dart';

class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildButton(
          iconImage: Image(
            height: Sizes.loginIconSize,
            width: Sizes.loginIconSize,
            image: AssetImage('lib/assets/images/google.png'),
          ),
          textButton: 'Google',
        ),
        BuildButton(
          iconImage: Image(
            height: Sizes.loginIconSize,
            width: Sizes.loginIconSize,
            image: AssetImage('lib/assets/images/facebook.png'),
          ),
          textButton: 'Facebook',
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
  BuildButton({required this.iconImage, required this.textButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicMultiHeight(0.06),
      width: context.dynamicMultiWidth(0.36),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.borderRadius),
          border: Border.all(color: kGrey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconImage,
          SizedBox(
            width: 5,
          ),
          Text(textButton),
        ],
      ),
    );
  }
}