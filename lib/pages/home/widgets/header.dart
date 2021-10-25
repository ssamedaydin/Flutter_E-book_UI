import 'package:book_app/constants/padding_constant.dart';
import 'package:flutter/material.dart';

List<Widget> buildHeader() =>
    [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 2 * PaddingConstant.kPadding, top: PaddingConstant.kPadding),
            child: Text("Kitaplık", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2 * PaddingConstant.kPadding),
            child: CircleAvatar(
              backgroundImage: AssetImage("lib/assets/images/profile.jpg"),
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 2 * PaddingConstant.kPadding, vertical: PaddingConstant.kPadding),
        child: Text("Kitapla'ya Hoşgeldiniz", style: TextStyle(color: Colors.black54),),
      ),
    ];