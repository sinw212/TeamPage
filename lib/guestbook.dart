import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'guestbook_service.dart';

class CreateMemoPage extends StatelessWidget {
  CreateMemoPage({super.key, required this.index, required this.isModify});

  final int index;
  final bool isModify;

  TextEditingController contentController = TextEditingController();

  String contentValue = "";

  @override
  Widget build(BuildContext context) {
    BookService bookService = context.read<BookService>();
    Book book = bookService.bookList[index];

    contentController.text = book.content;

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                if (contentValue.isNotEmpty) {
                  bookService.updateBook(index: index, content: contentValue);
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
            controller: contentController,
            decoration: const InputDecoration(
                hintText: "방명록을 입력하세요",
                border: InputBorder.none,
                filled: true,
                fillColor: Color(0xffD9D9D9)),
            autofocus: true,
            maxLines: null,
            expands: true,
            keyboardType: TextInputType.multiline,
            onChanged: (value) {
              contentValue = value;
            }),
      ),
    );
  }
}
