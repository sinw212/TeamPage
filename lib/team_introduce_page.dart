import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TeamIntroducePage extends StatelessWidget {
  const TeamIntroducePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image(
              image: AssetImage('assets/logo.png'),
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Text(
              "저희 FourFect 팀이 더 궁금하신가요?\n아래 링크를 클릭해보세요!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
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
                    "- 노션 주소",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewPage(
                          url:
                              "https://www.notion.so/1-4-67d4cd7fb9d94aa7a8b73fd9b93097b8?pvs=4",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "https://www.notion.so/1-4-67d4cd7fb9d94aa7a8b73fd9b93097b8?pvs=4",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                    "- 깃허브 주소",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewPage(
                          url: "https://github.com/Team4Page/TeamPage",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "https://github.com/Team4Page/TeamPage",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WebViewPage extends StatelessWidget {
  WebViewPage({super.key, required this.url});

  String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(url),
      ),
      body: WebView(initialUrl: url),
    );
  }
}
