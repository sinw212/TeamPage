//이충환 개인 페이지

import 'package:flutter/material.dart';

class ChoongHwanPersonal extends StatelessWidget {
  const ChoongHwanPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                        "자신에 대한 설명과 MBTI",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "제 MBTI는 ISFJ입니다. 항상 I,S 비율은 압도적으로 높고, F와 J는 가끔 바뀝니다.\n 소프트웨어 학과를 다니다가 우연히 접한 Android 프로젝트가 저와 잘 맞는다고 생각해서 캠프에 오게 되었습니다.",
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
                        "객관적으로 살펴본 자신의 장점",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "융통성 없다는 이야기도 많이 듣지만 정해진 규칙을 잘 따르고 시간 약속을 잘 지키는 것이 장점인것 같습니다.",
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
                        "자신의 협업 스타일 소개",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "적극적으로 의견을 내거나 리드하는 스타일은 아니지만 다른 사람 의견을 경청하고 맡은 바 최선을 다하려고 노력하는 편 인것 같습니다.",
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
                        "choongplog.tistory.com",
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
