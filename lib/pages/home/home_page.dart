import 'package:book_app/pages/home/widgets/app_bar.dart';
import 'package:book_app/pages/home/widgets/books_list.dart';
import 'package:book_app/pages/home/widgets/fab.dart';
import 'package:book_app/pages/home/widgets/header.dart';
import 'package:book_app/pages/home/widgets/icon_list.dart';
import 'package:book_app/pages/home/widgets/navigation_bar.dart';
import 'package:book_app/pages/home/widgets/new_book.dart';
import 'package:book_app/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconList(),
            BuildBookList(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFab(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
