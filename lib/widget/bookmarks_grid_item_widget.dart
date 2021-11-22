
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bookmark/util/navigation_util.dart';

import '../model/bookmark.dart';

class BookmarksGridItemWidget extends StatelessWidget {
 final Bookmark bookmarksList;
  const BookmarksGridItemWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () => navigationToViewBookmarkPage(bookmarksList, context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(bookmarksList.title,
                style: Theme.of(context).textTheme.headline6,),
              const SizedBox(height:6),
              Text(bookmarksList.link,
                style: Theme.of(context).textTheme.subtitle1,),
            ],
          ),
        ),
      ),
    );
  }
}
