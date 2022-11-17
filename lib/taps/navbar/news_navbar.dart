import 'package:flutter/material.dart';

// 消息页面导航栏
class news_navbar extends StatefulWidget {
  const news_navbar({super.key});

  @override
  State<news_navbar> createState() => _news_navbarState();
}

class _news_navbarState extends State<news_navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: Text(
            "消息",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 8, 0, 0),
          decoration: BoxDecoration(),
          alignment: Alignment.bottomCenter,
          child: Icon(Icons.drive_file_rename_outline,
              size: 13, color: Color.fromARGB(255, 151, 151, 151)),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(3, 8, 0, 0),
          decoration: BoxDecoration(),
          alignment: Alignment.bottomCenter,
          child: Text(
            "全部已读",
            style: TextStyle(
                color: Color.fromARGB(255, 151, 151, 151), fontSize: 13),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            decoration: BoxDecoration(),
            alignment: Alignment.bottomRight,
            child: Text(
              "设置",
              style: TextStyle(color: Colors.black, fontSize: 13),
            ),
          ),
        )
      ]),
    );
  }
}
