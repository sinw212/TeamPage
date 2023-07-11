import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'guestbook_service.dart';

class CreateMemoPage extends StatelessWidget {
  CreateMemoPage({super.key, required this.index});

  final int index;

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BookService bookService = context.read<BookService>();
    Book book = bookService.bookList[index];

    contentController.text = book.content;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // 삭제 버튼 클릭시
            },
            icon: Icon(Icons.delete),
          )
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
            onChanged: (value) {}),
      ),
    );
  }
}
