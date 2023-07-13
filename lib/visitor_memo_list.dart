import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_page/guestbook_service.dart';
import 'package:team_page/guestbook_view.dart';

import 'guestbook.dart';
import 'themes/colors.dart';
import 'themes/textStyles.dart';

class VisitorMemoList extends StatefulWidget {
  const VisitorMemoList({super.key});
  @override
  State<VisitorMemoList> createState() => _VisitorMemoListState();
}

class _VisitorMemoListState extends State<VisitorMemoList> {
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
                            "작성자 : " + memo.name,
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
                          trailing: Wrap(children: [
                            Container(width: 10),
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("삭제를 원하실 경우 비밀번호를 입력해주세요."),
                                        actions: [
                                          TextField(controller: keyController),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 50),
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.grey),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  keyController.clear();
                                                },
                                                child: Text("취소"),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  if (keyController.text ==
                                                      bookService.checkPassword(
                                                          index: index)) {
                                                    bookService.deleteMemo(
                                                        index: index);
                                                    Navigator.pop(context);
                                                    keyController.clear();
                                                  } else {
                                                    showWrongPasswordDialog(
                                                        context, bookService);
                                                    keyController.clear();
                                                  }
                                                },
                                                child: Text(
                                                  "확인",
                                                  style: TextStyles
                                                      .kAlertDialogPositiveTextStyle,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.delete)),
                            IconButton(
                                onPressed: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title:
                                              Text("수정을 원하실 경우 비밀번호를 입력해주세요."),
                                          actions: [
                                            TextField(
                                                controller: keyController),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 50),
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.grey),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    keyController.clear();
                                                  },
                                                  child: Text("취소"),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    if (keyController.text ==
                                                        bookService
                                                            .checkPassword(
                                                                index: index)) {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (_) =>
                                                              CreateMemoPage(
                                                            index: index,
                                                            isModify: true,
                                                          ),
                                                        ),
                                                      );
                                                      keyController.clear();
                                                      if (memo
                                                          .content.isEmpty) {
                                                        bookService.deleteMemo(
                                                            index: index);
                                                        keyController.clear();
                                                      }
                                                    } else {
                                                      showWrongPasswordDialog(
                                                          context, bookService);
                                                      keyController.clear();
                                                    }
                                                  },
                                                  child: Text(
                                                    "확인",
                                                    style: TextStyles
                                                        .kAlertDialogPositiveTextStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      });
                                },
                                icon: Icon(Icons.edit)),
                          ]),
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
              bookService.deleteMemo(index: bookList.length - 1);
            }
          },
        ),
      );
    });
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
