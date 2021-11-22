

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/page/add_bookmarks_page.dart';
import 'package:my_bookmark/util/navigation_util.dart';
import 'package:my_bookmark/widget/bookmarks_grid_widget.dart';
import 'package:my_bookmark/widget/bookmarks_list_widget.dart';

class BookmarksPage extends StatefulWidget {
  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  bool isGrid = false;
  List<Bookmark> bookmarksList =  [
    Bookmark('Flutter', 'https://flutter.dev'),
    Bookmark('Google', 'https://google.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookmarks'),
        actions: [
          IconButton(onPressed: (){
              setState(() {
                isGrid = !isGrid;
              });
          }, icon: isGrid
              ? Icon(Icons.list, color: Colors.white,)
              : Icon(Icons.grid_on, color: Colors.white,))
        ],
      ),
      body: isGrid ? BookmarksListWidget(bookmarksList) : BookmarksGridWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => onAddButtonPressed(context),
        label: Text('Add'),
        icon: Icon(Icons.add),
      ),
    );
  }

void  onAddButtonPressed(BuildContext context) async {
    final result = await navigationToAddBookmarkPage(context);
  if(result != null && result is Bookmark) {

    setState(() {
      bookmarksList.add(result);
    });
  }
  }

}
