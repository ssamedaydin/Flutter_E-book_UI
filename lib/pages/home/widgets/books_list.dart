import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/constants/sizes_constants.dart';
import 'package:book_app/models/book_model.dart';
import 'package:book_app/pages/book/book_page.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

final List<BookModel> books = BookModel.book;

class BuildBookList extends StatelessWidget {
  const BuildBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.infinity,
      color: kBlack.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: PaddingConstant.kPadding,
                horizontal: PaddingConstant.kPadding * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "En Çok Satanlar",
                  style: subTitle.copyWith(color: kBlack),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("  Tüm Liste  "),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: PaddingConstant.kPadding),
                    backgroundColor: kDeepOrange,
                    primary: kWhiteColor,
                    minimumSize: Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.borderButtonRadius),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: PaddingConstant.kPadding * 2,
                    right: PaddingConstant.kPadding,
                    left: index == 0 ? PaddingConstant.kPadding : 0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage(book: books[index],)));
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Sizes.borderRadius),
                          ),
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(Sizes.borderRadius),
                            child: Image.asset(
                              books[index].image,
                              height: 180,
                              width: Sizes.containerSize,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: Sizes.containerSize,
                          child: Text(books[index].title),
                        ),
                        Container(
                          width: Sizes.containerSize,
                          child: Text(
                            books[index].subtitle,
                            style:
                                TextStyle(fontSize: 10, color: kBlueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
