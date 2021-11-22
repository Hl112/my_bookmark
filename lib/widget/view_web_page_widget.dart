import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ViewWebPageWidget extends StatefulWidget {
  String link;
  ViewWebPageWidget(this.link, {Key? key}) : super(key: key);

  @override
  _ViewWebPageWidgetState createState() => _ViewWebPageWidgetState();
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
  var _isLoadingWebPage = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [
          WebView(initialUrl: widget.link,
            onPageFinished: (url)=>{
              setState(() {
                _isLoadingWebPage = false;
              })
            },),
          _isLoadingWebPage ? CircularProgressIndicator() : Container()
        ]
    );
  }
}