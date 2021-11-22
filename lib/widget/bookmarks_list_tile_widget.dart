
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bookmark/util/navigation_util.dart';

import '../model/bookmark.dart';

class BookmarksListTileWidget extends StatelessWidget {
 final Bookmark bookmarksList;
  BookmarksListTileWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
     title: Text(bookmarksList.title, style: Theme.of(context).textTheme.headline5,),
     subtitle: Text(bookmarksList.link, style: Theme.of(context).textTheme.subtitle1,),
     onTap: ()=> navigationToViewBookmarkPage(bookmarksList, context),
    );
  }
}
