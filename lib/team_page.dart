import 'package:flutter/material.dart';
import 'package:team_page/personal_page.dart';

class TeamPage extends StatelessWidget {
  TeamPage({super.key}); // 생성자
  final name = ['이충환', '이다을', '김진아', '이용준', '김소현'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff333333),
        appBar: AppBar(
          backgroundColor: Color(0xffFCD610),
          title: Text(
            "팀 Fourfect",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(40, 60, 40, 60),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image(
                        image: AssetImage('assets/logo_fourfect.png'),
                      ),
                    ),
                    Text(
                      "안녕하세요 Fourfect 입니다 :)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Color(0xffeeeeee),
                      ),
                    ),
                    Text(
                      "숫자 4와 perfect의 뜻을 합친 이름으로 우리들의 창의적인 사고와 실행력으로 완벽한 결과물을 낼 수 있도록 최선을다하겠습니다!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffeeeeee),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff111111).withOpacity(0.5),
                            primary: Color(0xffffffff),
                            minimumSize: Size(100, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Icon(Icons.home),
                            ),
                            SizedBox(
                              child: Text('팀 페이지'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff111111).withOpacity(0.5),
                            primary: Color(0xffffffff),
                            minimumSize: Size(100, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Icon(Icons.mode),
                            ),
                            SizedBox(
                              child: Text('방명록 남기기'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PersonalPage(name[i]),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffeeeeee).withOpacity(0.1),
                          minimumSize: Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(name[i]),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(Icons.arrow_circle_right_outlined),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
