import 'package:flutter/material.dart';
import 'package:my_bookmark/model/bookmark.dart';

 class AddBookmarkPage extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     return AddBookmarksWidget();
   }
 }



 class AddBookmarksWidget extends StatefulWidget {


   @override
   _AddBookmarksWidgetState createState() => _AddBookmarksWidgetState();
 }

 class _AddBookmarksWidgetState extends State<AddBookmarksWidget> {

   final _titleTextController = TextEditingController();
   final _linkTextController = TextEditingController();
   final _linkFocusNode = FocusNode();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Add a new bookmark"),
       ),
       floatingActionButton: Builder(
         builder: (BuildContext context) => FloatingActionButton(onPressed: () {
             String title = _titleTextController.text;
             String link = _linkTextController.text;

             Scaffold.of(context).hideCurrentSnackBar();
             if(isInputValid(title, link)){
               
               Navigator.pop(context, Bookmark(title, link));
               
             }else{
               showInputError(context, title, link);
             }
           },
             child: Icon(Icons.check),
             backgroundColor: Colors.green,),
       ),
       body: Padding(
         padding: const EdgeInsets.all(16),
         child: Column(
           children: [
             TextFormField(
               autofocus: true,
               controller: _titleTextController,
               textInputAction: TextInputAction.next,
               onFieldSubmitted: (textInput)=>{
                 FocusScope.of(context).requestFocus(_linkFocusNode)
               },
               decoration: const InputDecoration(
                   icon: Icon(Icons.title),
                   labelText : 'Title',
                   hintText: 'Title of the bookmark',
                   border: OutlineInputBorder()
               ),
             ),
             SizedBox(height: 16,),
             TextFormField(
               controller: _linkTextController,
               focusNode: _linkFocusNode,
               decoration: const InputDecoration(
                   icon: Icon(Icons.link),
                   labelText : 'Url',
                   hintText: 'URL of the bookmark',
                   border: OutlineInputBorder()
               ),
             ),

           ],
         ),
       ),
     );
   }

   @override
  void dispose() {
     _titleTextController.dispose();
     _linkTextController.dispose();
     _linkFocusNode.dispose();
    super.dispose();
  }

  bool isInputValid(String title, String link) {
     return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
     if(title.isEmpty) {
       showSnackBar(context, 'Title empty');
     } else if(link.isEmpty) {
       showSnackBar(context, 'Link is empty');
     }
  }

  void showSnackBar(BuildContext context, String message){
     Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

 }
