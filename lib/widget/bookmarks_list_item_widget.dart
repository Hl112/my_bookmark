
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bookmark/util/navigation_util.dart';

import '../model/bookmark.dart';

class BookmarksListItemWidget extends StatelessWidget {
 final Bookmark bookmarksList;
  BookmarksListItemWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigationToViewBookmarkPage(bookmarksList, context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bookmarksList.title,
              style: Theme.of(context).textTheme.headline6,),
            SizedBox(height:6),
            Text(bookmarksList.link,
              style: Theme.of(context).textTheme.subtitle1,),
          ],
        ),
      ),
    );
  }
}
