import 'package:flutter/material.dart';
import 'introduce_personal.dart';
import 'guestbook_list.dart';
import 'introduce_team.dart';
import 'themes/colors.dart';
import 'themes/text_styles.dart';

class FourfectMain extends StatelessWidget {
  FourfectMain({super.key}); // 생성자
  final name = ['이충환', '이다을', '김진아', '이용준', '김소현'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.kMainBackground,
      appBar: AppBar(
        backgroundColor: ColorStyles.kAppBar,
        title: Text("팀 Fourfect"),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                    Text("안녕하세요 Fourfect 입니다 :)",
                        style: TextStyles.kMainTitleTextStyle),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "숫자 4와 perfect의 뜻을 합친 이름으로,\n우리들의 창의적인 사고와 실행력으로 완벽한\n결과물을 낼 수 있도록 최선을 다하겠습니다!",
                        textAlign: TextAlign.center,
                        style: TextStyles.kMainNormalTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    featureButton(context, 0, "팀 페이지"),
                    featureButton(context, 1, "방명록 남기기"),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                        backgroundColor:
                            ColorStyles.kLightGrey.withOpacity(0.1),
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
            ],
          ),
        ),
      ),
    );
  }

  Expanded featureButton(BuildContext context, int num, String pageText) {
    //num: 0 - 팀 페이지 버튼, 1 - 방명록 작성하기 버튼
    return Expanded(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => num == 0 ? TeamIntroducePage() : GuestbookList(),
            ),
          );
        },
        style: TextButton.styleFrom(
            backgroundColor: ColorStyles.kDarkGrey.withOpacity(0.5),
            foregroundColor: Colors.white,
            minimumSize: Size(100, 60),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Icons.home),
            ),
            SizedBox(
              child: Text(pageText),
            ),
          ],
        ),
      ),
    );
  }
}
