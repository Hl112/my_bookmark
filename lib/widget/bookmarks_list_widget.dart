import 'package:flutter/cupertino.dart';
import 'package:my_bookmark/widget/bookmarks_list_tile_widget.dart';

import '../model/bookmark.dart';
import 'bookmarks_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
 final List<Bookmark> bookmarksList;
 BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookmarksList.length,
        itemBuilder: (BuildContext context, int index){
      return BookmarksListItemWidget(bookmarksList[index]);
      // return BookmarksListTileWidget(bookmarksList[index]);
    });
  }


  List<BookmarksListItemWidget> getBookmarkWidgetList(){
    List<BookmarksListItemWidget> list = [];
    for(Bookmark bm in bookmarksList) {
      list.add(BookmarksListItemWidget(bm));
    }
    return list;
  }
}