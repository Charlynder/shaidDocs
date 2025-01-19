// the editor screen is where the user can edit the text of the page or pages
// it will be the main screen that the user will interact with
// the user will be able to edit documents, save them, and share them within this screen
// it will use a options menu bar to allow the user to make changes to the text of the document, like bold, italic, underline, etc. using the rich text editor with the option to use markdown as a way the 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editor Screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            // 30% from the top
            margin: const EdgeInsets.only(top: 30.0), 
            // A4 width, height in pixels at 72 DPI
            width: 595, 
            height: 842,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  // changes position of shadow
                  offset: Offset(0, 3), 
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
