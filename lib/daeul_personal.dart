//이다을 개인 페이지
import 'package:flutter/material.dart';

class DaeulPersonal extends StatelessWidget {
  const DaeulPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Color(0xffeeeeee),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    "01 자신에 대한 설명과 MBTI",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    "ENTJ지만 E와 I의 비율이 거의 51대 49입니다. 상황에 따라 자주 바뀌는데 지금은 다시 I가 된 것 같아요."),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xffeeeeee),
            margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    "02 객관적으로 살펴본 자신의 장점",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    "해야겠다고 마음먹은 일이라면 밤을 새서라도 끝을봐야 직성이 풀리는 성격인데 장점이라고 해도 되겠죠?ㅎ.."),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xffeeeeee),
            margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    "03 자신의 스타일 협업 스타일 소개",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    "의견을 내는것도 좋아하지만 다른사람의 의견을 듣고 수용해 서로의 장점을 뽑아내서 정리하는 편입니다. 모두의 의견을 존중해야 한다고 생각해요."),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xffeeeeee),
            margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    "04 개인인 블로그 주소",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text("아직없음"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
