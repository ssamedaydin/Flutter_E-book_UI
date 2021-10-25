import 'package:book_app/constants/icons_constants.dart';
import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/constants/sizes_constants.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

class BuildFab extends StatefulWidget {
  const BuildFab({Key? key}) : super(key: key);

  @override
  _BuildFabState createState() => _BuildFabState();
}

class _BuildFabState extends State<BuildFab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: PaddingConstant.instance.kFabPadding,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Sizes.fabSizedBox,
                  ),
                  Text(
                    "Shop by",
                    style: TextStyle(color: kBlack54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            color: kBlack54,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.search,
                        color: kDeepOrange,
                      )
                    ],
                  ),
                  SizedBox(height: PaddingConstant.kPadding,),
                  _buildCategory(
                    category: "Kitaplar",
                    iconData: IconsConstants.instance.iconBook,
                    color: kBlue,
                  ),
                  _buildCategory(
                    category: "Bilgisayar Oyunları",
                    iconData: IconsConstants.instance.iconSportsEsports,
                    color: kDeepOrange,
                  ),
                  _buildCategory(
                    category: "Müzik & Filmler",
                    iconData: IconsConstants.instance.iconMovie,
                    color: kBlue,
                  ),
                  _buildCategory(
                    category: "Market",
                    iconData: IconsConstants.instance.iconStore,
                    color: kCyan,
                  ),
                  _buildCategory(
                    category: "Sağlık & Bakım",
                    iconData: IconsConstants.instance.iconHealing,
                    color: kYellow.shade700,
                  ),
                  _buildCategory(
                    category: "Sporlar",
                    iconData: IconsConstants.instance.iconBasketball,
                    color: kRed,
                  ),
                  // 6 Categories
                  SizedBox(height: Sizes.fabSizedBox),
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: Icon(
        IconsConstants.instance.iconList,
        color: kBlue,
      ),
    );
  }

  Widget _buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: PaddingConstant.kPadding,
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(Sizes.borderMidRadius),
        child: Container(
          width: Sizes.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 2 * PaddingConstant.kPadding,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  iconData,
                  color: kWhiteColor,
                ),
              ),
              Text(
                category,
                style: categoryText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
