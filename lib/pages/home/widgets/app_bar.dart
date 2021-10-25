import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      backgroundColor: kTransparent,
      elevation: 0,
      title: Image.asset("lib/assets/images/homeLogo.png",
      height: 50,),
      centerTitle: true,
      automaticallyImplyLeading: false,
      actions: [
      ],
    );
