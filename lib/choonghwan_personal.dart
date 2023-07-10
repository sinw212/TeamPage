//이충환 개인 페이지

import 'package:flutter/material.dart';

class ChoongHwanPersonal extends StatelessWidget {
  const ChoongHwanPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    color: Color(0xFFEEEEEE),
                    height: 200,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "저를 소개합니다.<이충환>",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(""),
                        Text("MBTI: ISFJ(용감한 수호자)",
                            style: TextStyle(fontSize: 20)),
                        Text(""),
                      ],
                    ),
                  ),
                ]),
                Stack(children: [
                  Container(
                    color: Color(0xFFEEEEEE),
                    height: 200,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "저를 소개합니다.<이충환>",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(""),
                        Text("MBTI: ISFJ(용감한 수호자)",
                            style: TextStyle(fontSize: 20)),
                        Text(""),
                      ],
                    ),
                  ),
                ]),
                Stack(children: [
                  Container(
                    color: Color(0xFFEEEEEE),
                    height: 200,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "저를 소개합니다.<이충환>",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(""),
                        Text("MBTI: ISFJ(용감한 수호자)",
                            style: TextStyle(fontSize: 20)),
                        Text(""),
                      ],
                    ),
                  ),
                ]),
                Stack(children: [
                  Container(
                    color: Color(0xFFEEEEEE),
                    height: 200,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "저를 소개합니다.<이충환>",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(""),
                        Text("MBTI: ISFJ(용감한 수호자)",
                            style: TextStyle(fontSize: 20)),
                        Text(""),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
