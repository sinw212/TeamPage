import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'guestbook_service.dart';
import 'guestbook_detail.dart';
import 'guestbook.dart';
import 'themes/colors.dart';

class GuestbookList extends StatefulWidget {
  const GuestbookList({super.key});
  @override
  State<GuestbookList> createState() => _GuestbookListState();
}

class _GuestbookListState extends State<GuestbookList> {
  TextEditingController keyController = TextEditingController();

  @override
  void dispose() {
    keyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BookService>(builder: (context, bookService, child) {
      List<Book> bookList = bookService.bookList;
      return Scaffold(
        backgroundColor: ColorStyles.kMainBackground,
        appBar: AppBar(
          backgroundColor: ColorStyles.kAppBar,
          title: Text("방명록 작성하기"),
        ),
        body: bookList.isEmpty
            ? Center(child: Text("방명록을 작성해 주세요"))
            : ListView.builder(
                itemCount: bookList.length,
                itemBuilder: (context, index) {
                  Book memo = bookList[index];
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
                        child: ListTile(
                          tileColor: Colors.white,
                          title: Text(
                            memo.content,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            "작성자 : ${memo.name}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ViewGuestBook(
                                  index: index,
                                ),
                              ),
                            );
                          },
                          trailing: Wrap(
                            children: [
                              Container(width: 10),
                              updateDeleteAlertDialog(
                                  context, bookService, index, memo, 0),
                              updateDeleteAlertDialog(
                                  context, bookService, index, memo, 1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorStyles.kAppBar,
          child: Icon(Icons.add),
          onPressed: () async {
            bookService.createBook(
                content: '', substance: '', name: '', key: '');
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CreateMemoPage(
                  index: bookService.bookList.length - 1,
                  isModify: false,
                ),
              ),
            );
            if (bookList[bookService.bookList.length - 1].content.isEmpty) {
              bookService.deleteBook(index: bookList.length - 1);
            }
          },
        ),
      );
    });
  }

  IconButton updateDeleteAlertDialog(BuildContext context,
      BookService bookService, int index, Book memo, int num) {
    //num: 0 - 삭제 아이콘, 1 - 수정 아이콘
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("${num == 0 ? "삭제를" : "수정을"} 원하실 경우 비밀번호를 입력해주세요."),
              actions: [
                TextField(controller: keyController),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.grey),
                      onPressed: () {
                        Navigator.pop(context);
                        keyController.clear();
                      },
                      child: Text("취소"),
                    ),
                    TextButton(
                      onPressed: () {
                        if (keyController.text ==
                            bookService.checkPassword(index: index)) {
                          if (num == 0) {
                            //삭제버튼 누른경우
                            bookService.deleteBook(index: index);
                          }
                          Navigator.pop(context);
                          if (num == 1) {
                            //수정버튼 누른경우
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CreateMemoPage(
                                  index: index,
                                  isModify: true,
                                ),
                              ),
                            );
                          }
                          keyController.clear();
                          if (num == 1) {
                            //수정버튼 누른경우
                            if (memo.content.isEmpty) {
                              bookService.deleteBook(index: index);
                              keyController.clear();
                            }
                          }
                        } else {
                          showWrongPasswordDialog(context, bookService);
                          keyController.clear();
                        }
                      },
                      child: Text(
                        "확인",
                        style: TextStyle(
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
      icon: Icon(num == 0 ? Icons.delete : Icons.edit),
    );
  }
}

void showWrongPasswordDialog(BuildContext context, BookService bookService) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("잘못된 비밀번호입니다."),
        actions: [
          // 취소 버튼
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("닫기"),
          ),
          // 확인 버튼
        ],
      );
    },
  );
}
