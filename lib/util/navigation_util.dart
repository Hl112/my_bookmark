import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';
import 'package:my_bookmark/page/add_bookmarks_page.dart';
import 'package:my_bookmark/page/view_bookmark_page.dart';



void navigationToViewBookmarkPage(Bookmark bookmark, BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ViewBookmarkPage(bookmark)));
}


Future navigationToAddBookmarkPage(BuildContext context){
  return Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddBookmarkPage()));
}