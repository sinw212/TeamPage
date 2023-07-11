import 'dart:convert';

import 'package:flutter/material.dart';

import 'main.dart';

class Book {
  Book({
    required this.content,
  });
  String content;

  Map toJson() {
    return {'content': content};
  }

  factory Book.fromJson(json) {
    return Book(content: json['content']);
  }
}

class BookService extends ChangeNotifier {
  BookService() {
    loadBookList();
  }
  List<Book> bookList = [
    Book(content: '첫 방명록'),
    Book(content: '두번째 방명록'),
  ];

  createBook({required String content}) {
    Book book = Book(content: content);
    bookList.add(book);
    notifyListeners();
    saveBookList();
  }

  updateBook({required int index, required String content}) {
    Book book = bookList[index];
    book.content = content;
    notifyListeners();
    saveBookList();
  }

  deleteMemo({required int index}) {
    bookList.removeAt(index);
    notifyListeners();
    saveBookList();
  }

  saveBookList() {
    List bookJsonList = bookList.map((memo) => memo.toJson()).toList();
    String jsonString = jsonEncode(bookJsonList);
    prefs.setString('bookList', jsonString);
  }

  loadBookList() {
    String? jsonString = prefs.getString('bookList');
    if (jsonString == null) return;
    List bookJsonList = jsonDecode(jsonString);
    bookList = bookJsonList.map((json) => Book.fromJson(json)).toList();
  }
}
