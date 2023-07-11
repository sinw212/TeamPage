import 'package:flutter/material.dart';

// MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => GuestbookService()),
//       ],

class crateMemoPage extends StatelessWidget {
  const crateMemoPage({
    super.key,
    /*required this.index*/
  });

  // final int index;
  // TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // GuestbookService guestbookService = context.read<GuestbookService>();
    // Memo memo =
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              // onChanged: (value) {
              //   updateMemoTitle(index: index, content: content)
              // },
              decoration: InputDecoration(
                hintText: "제목",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Flexible(
            flex: 8,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              decoration: InputDecoration(
                hintText: "내용",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
