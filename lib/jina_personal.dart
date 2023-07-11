//김진아 개인 페이지

import 'package:flutter/material.dart';

class JinAPersonal extends StatelessWidget {
  const JinAPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEEEEEE),
          elevation: 0.5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  color: Color(0xFFEEEEEE),
                  child: Column(
                    children: [
                      Text(
                        "MBTI",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("저의 MBTI는 ENFP이지만 E와 I의 비율과 \n P와 J의 비율이 거의 비슷합니다.",
                          style: TextStyle(fontSize: 14)),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  color: Color(0xFFEEEEEE),
                  child: Column(
                    children: [
                      Text(
                        "객관적으로 살펴본 장점",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "모르는 것이 생기더라도 끝까지 노력하는 것입니다.",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  color: Color(0xFFEEEEEE),
                  child: Column(
                    children: [
                      Text(
                        "협업 스타일",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "다른 사람의 의견을 수용하고, 반영하려고 노력하는 것입니다.",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  color: Color(0xFFEEEEEE),
                  child: Column(
                    children: [
                      Text(
                        "개인 블로그 주소",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "https://velog.io/@jxxn.a 입니다.",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
