import 'package:flutter/cupertino.dart';
import 'package:my_bookmark/widget/bookmarks_list_tile_widget.dart';

import '../model/bookmark.dart';
import 'bookmarks_grid_item_widget.dart';
import 'bookmarks_list_item_widget.dart';

class BookmarksGridWidget extends StatelessWidget {
 final List<Bookmark> bookmarksList;
 BookmarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  6),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2,
          crossAxisCount: 2,
          crossAxisSpacing: 12
        ),
          itemCount: bookmarksList.length,
          itemBuilder: (BuildContext context, int index){
        return BookmarksGridItemWidget(bookmarksList[index]);
        // return BookmarksListTileWidget(bookmarksList[index]);
      }),
    );
  }


  List<BookmarksListItemWidget> getBookmarkWidgetList(){
    List<BookmarksListItemWidget> list = [];
    for(Bookmark bm in bookmarksList) {
      list.add(BookmarksListItemWidget(bm));
    }
    return list;
  }
}