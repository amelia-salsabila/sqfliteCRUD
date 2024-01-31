import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_aplication_1/pages/note_creation_page/note_creation_page_controller.dart';
import 'package:flutter_aplication_1/widgets/common.dart';

class NoteCreationPage extends GetView<NoteCreationPageController> {
  const NoteCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add note"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(
              flex: 1,
            ),
            styledTextField(
                controller: controller.titleController, hintText: "Title"),
            Spacer(
              flex: 1,
            ),
            styledTextField(
                controller: controller.contentController, hintText: "Content"),
            Spacer(
              flex: 20,
            ),
            ElevatedButton(onPressed: controller.onSubmit, child: Text("Add")),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      )),
    );
  }
}
