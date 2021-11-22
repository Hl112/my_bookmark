import 'package:flutter/material.dart';
// import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/page/bookmarks_page.dart';

// import 'bookmarks_list_item_widget.dart';
// import 'widget/bookmarks_list_widget.dart';
//
void main(){
  runApp(MyBookmarkApp());
}

class MyBookmarkApp extends StatelessWidget {
  const MyBookmarkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}



