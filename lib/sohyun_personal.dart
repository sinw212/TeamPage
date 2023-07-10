//김소현 개인 페이지
import 'package:flutter/material.dart';

class SohyunPersonal extends StatelessWidget {
  const SohyunPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "멤버 소개",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "김소현",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- MBTI",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xFFEEEEEE),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' 제 MBTI는 용감한 수호자, ISFJ입니다.\n학부생 시절만 해도 ESFJ였는데 입사를 하고서 성격이 바뀌었습니다. 이후로도 꽤 여러번 재검사를 해봤는데 결국 E로 돌아오지 못했답니다..(회사가 사람을 버려놓네요..^^)\n' +
                              ' 검사를 해보면 90% 이상의 극S와 극J가 나오고 E와I, T와F는 4:6정도 비율이 나옵니다. ISFJ가 I중에 가장 E이고, F중에 가장 T라고 하던데 어느정도는 일치한다고 느끼는 것 같습니다.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- 나의 장점",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xFFEEEEEE),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' 섬세함을 제 장점으로 내세우고 싶습니다. 저는 관찰력과 기억력이 좋은 편이라 선물 하나를 하더라도 필요할 것 같은 것, 혹은 갖고싶다고 했던 것들을 잘 골라서 주는 편입니다. ' +
                              '또한 그덕에 주변 사람들의 감정변화를 잘 캐치하는 능력이 있습니다.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- 협업 스타일",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xFFEEEEEE),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' 주도하는 것과 따라가는 것 둘 중에 하나를 굳이 골라본다면 주도형에 가까운 것 같습니다. 그러나 팀프로젝트는 내가 놓치는것을 팀원이 잡아주고, 팀원이 놓치는것을 내가 잡아주며 ' +
                              '서로 도와가며 완성해나가야 한다고 생각합니다. 그래서 팀원들의 의견을 최대한 많이 듣고 그 안에서의 최선을 찾기위해 노력하는 편인 것 같습니다.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "- 개인 블로그 주소",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xFFEEEEEE),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'https://sinw212.tistory.com/',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
