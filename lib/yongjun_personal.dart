//이용준 개인 페이지
import 'package:flutter/material.dart';

class YongjunPersonal extends StatelessWidget {
  const YongjunPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("이용준의 프로필"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 200,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "저의 MBTI는 'INTJ'입니다 사람들이랑 어울리는 걸 좋아해서 E라고 생각한 적 있는데 낯 가림이 심한 걸 보니 I가 맞는 것 같아요",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 15,
                ),
                Container(
                  width: 360,
                  height: 202,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Container(
                  width: 360,
                  height: 202,
                  decoration: BoxDecoration(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
