import 'package:get/get.dart';
import 'package:flutter_aplication_1/pages/notes_page/notes_page_controller.dart';

class NotePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotesPageController());
  }
}
