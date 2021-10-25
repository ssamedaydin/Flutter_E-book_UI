import 'package:book_app/constants/icons_constants.dart';
import 'package:book_app/constants/padding_constant.dart';
import 'package:flutter/material.dart';

Widget buildNavigationBar() => BottomAppBar(
  shape: CircularNotchedRectangle(),
  notchMargin: 8.0,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: PaddingConstant.instance.kLeftPadding,
        child: IconButton(onPressed: (){}, icon: IconsConstants.instance.iconMessage),
      ),
      Padding(
        padding: PaddingConstant.instance.kRightPadding,
        child: IconButton(onPressed: (){}, icon: IconsConstants.instance.iconShoppingCard),
      ),
    ],
  ),
);