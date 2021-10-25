import 'package:book_app/constants/icons_constants.dart';
import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/constants/sizes_constants.dart';
import 'package:book_app/models/book_model.dart';
import 'package:book_app/pages/book/book_page.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildNewBook extends StatelessWidget {
   BuildNewBook({Key? key}) : super(key: key);

  final newBook = BookModel.newBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 2 * PaddingConstant.kPadding, vertical: PaddingConstant.kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Yeni Çıkanlar",
                style: subTitle.copyWith(color: kBlack),
              ),
              IconsConstants.instance.iconArrowRight,
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage(book: newBook,)));
          },
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: PaddingConstant.kPadding),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.newBookRadius),
                  ),
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Sizes.newBookRadius),
                    child: Image.asset(
                      newBook.image,
                      height: 180,
                      width: Sizes.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2 * PaddingConstant.kPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: TextStyle(color: kBlack, fontSize: 16),
                        ),
                        Text(
                          newBook.subtitle,
                          style:
                              TextStyle(color: kBlueGrey, fontSize: 10),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "4.8",
                        ),
                      style: TextButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: PaddingConstant.kPadding),
                        backgroundColor: kDeepOrange,
                        primary: Colors.white,
                        minimumSize: Size(5,5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),

                        )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom,)
      ],
    );
  }
}
