import 'package:book_app/constants/icons_constants.dart';
import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/constants/sizes_constants.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget buildSearchBar() => Padding(
      padding: EdgeInsets.all(2 * PaddingConstant.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Bir kitap arayın",
          fillColor: kBlack.withOpacity(0.1),
          filled: true,
          prefixIcon: IconsConstants.instance.iconSearch,
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: PaddingConstant.kPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.searchRadius),
            borderSide: BorderSide.none
          ),
        ),
      ),
    );
