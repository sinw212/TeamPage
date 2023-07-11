import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitorMemoList extends StatefulWidget {
  const VisitorMemoList({super.key});

  @override
  State<VisitorMemoList> createState() => _HomePageState();
}

class _HomePageState extends State<VisitorMemoList> {
  List<String> visitList = ["empty"]; // 전체 메모 목록

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("방명록"),
        backgroundColor: Colors.grey,
      ),
      body: visitList.isEmpty
          ? Center(child: Text("방명록을 작성해 주세요"))
          : ListView.builder(
              itemCount: visitList.length, // memoList 개수 만큼 보여주기
              itemBuilder: (context, index) {
                String memo = visitList[index]; // index에 해당하는 memo 가져오기
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        memo,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {},
                    ),
                    Container(
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                );
              },
            ),
    );
  }
}
