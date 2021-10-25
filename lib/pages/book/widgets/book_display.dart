
import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/models/book_model.dart';
import 'package:flutter/material.dart';

List<Widget> buildBookDisplay({required BookModel book}) => [
  Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 4,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        book.secondImage,
        height: 350,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Padding(
    padding: EdgeInsets.all(PaddingConstant.kPadding),
    child: Text(
      book.title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ),
];
