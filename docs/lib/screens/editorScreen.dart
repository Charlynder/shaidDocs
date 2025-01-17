// the editor screen is where the user can edit the text of the page or pages
// it will be the main screen that the user will interact with
// the user will be able to edit documents, save them, and share them within this screen
// it will use a options menu bar to allow the user to make changes to the text of the document, like bold,
// italic, underline, etc. using the rich text editor with the option to use markdown like syntax as a way to edit
// the text
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
      body: const Center(
        child: Text('Welcome to the Editor Screen!'),
      ),
    );
  }
}
