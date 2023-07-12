import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'guestbook_service.dart';

class CreateMemoPage extends StatelessWidget {
  CreateMemoPage({super.key, required this.index, required this.isModify});

  final int index;
  final bool isModify;

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
    keyController.text = book.key;

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                if (contentValue.isNotEmpty) {
                  bookService.updateBook(
                      index: index,
                      content: contentValue,
                      substance: substanceValue,
                      name: nameValue,
                      key: keyValue);
                  Navigator.pop(context);
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(isModify
                            ? "내용이 수정되지 않은 메모는 수정이 불가합니다."
                            : "내용이 없는 메모는 저장이 불가합니다."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("확인"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text(
                isModify ? "수정" : "저장",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                  controller: contentController,
                  decoration: const InputDecoration(
                      hintText: "제목을 입력하세요",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFEEEEEE)),
                  autofocus: false,
                  maxLines: 1,
                  expands: false,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    contentValue = value;
                  }),
              SizedBox(height: 20),
              TextField(
                  controller: substanceController,
                  decoration: const InputDecoration(
                      hintText: "내용을 입력하세요",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFEEEEEE)),
                  autofocus: false,
                  maxLines: 10,
                  expands: false,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    substanceValue = value;
                  }),
              SizedBox(height: 20),
              TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      hintText: "이름",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFEEEEEE)),
                  autofocus: false,
                  maxLines: 1,
                  expands: false,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    nameValue = value;
                  }),
              SizedBox(height: 20),
              TextField(
                  controller: keyController,
                  decoration: const InputDecoration(
                      hintText: "비밀번호",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFEEEEEE)),
                  autofocus: false,
                  maxLines: 1,
                  expands: false,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    keyValue = value;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
