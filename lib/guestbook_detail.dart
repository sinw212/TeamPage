import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'guestbook_service.dart';
import 'themes/colors.dart';

// ignore: must_be_immutable
class ViewGuestBook extends StatelessWidget {
  ViewGuestBook({super.key, required this.index});

  final int index;

  TextEditingController contentController = TextEditingController();
  TextEditingController substanceController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController keyController = TextEditingController();

  String contentValue = "";
  String substanceValue = "";
  String nameValue = "";
  String keyValue = "";

  @override
  Widget build(BuildContext context) {
    BookService bookService = context.read<BookService>();
    Book book = bookService.bookList[index];

    contentController.text = book.content;
    substanceController.text = book.substance;
    nameController.text = book.name;

    return Scaffold(
      backgroundColor: ColorStyles.kMainBackground,
      appBar: AppBar(
        backgroundColor: ColorStyles.kAppBar,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              guestBookDetailItem(contentController, "제목을 입력하세요", 1),
              SizedBox(height: 20),
              guestBookDetailItem(substanceController, "내용을 입력하세요", 10),
              SizedBox(height: 20),
              guestBookDetailItem(nameController, "이름", 1),
            ],
          ),
        ),
      ),
    );
  }

  TextField guestBookDetailItem(
      TextEditingController controller, String hintText, int maxLines) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            filled: true,
            fillColor: Color(0xFFEEEEEE)),
        autofocus: false,
        maxLines: maxLines,
        expands: false,
        enabled: false,
        keyboardType: TextInputType.multiline,
        onChanged: (value) {});
  }
}
