//이용준 개인 페이지
import 'dart:html';

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
                    color: Color(0xeeeeeeee),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "저의 MBTI는 'INTJ'입니다 사람들이랑 어울리는 걸 좋아해서 E라고 생각한 적 있는데 낯 가림이 심한 걸 보니 I가 맞는 것 같아요",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 15,
                ),
                Container(
                  width: 500,
                  height: 200,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color(0xeeeeeeee),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "객관적으로 봤을 때 저의 장점은 감정적이지 않은 것입니다.",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 15,
                ),
                Container(
                  width: 500,
                  height: 200,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color(0xeeeeeeee),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "저는 수용을 잘하는 스타일인 것 같습니다 아는 것이 적은데 내 의견을 얘기하다가 부끄러워지는 상황이 두려워서 조심하는 것 같네요",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 15,
                ),
                Container(
                  width: 500,
                  height: 200,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: Color(0xeeeeeeee),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "개인 블로그는 운영하지 않습니다.. SNS도 안해요",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
