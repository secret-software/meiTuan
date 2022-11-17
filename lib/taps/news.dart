import 'dart:ui';

import 'package:flutter/material.dart';

class news extends StatefulWidget {
  const news({super.key});

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  List<Widget> _list() {
    List<Widget> _listviewData = [];
    for (var i = 0; i < 20; i++) {
      _listviewData.add(Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: user_news(),
      ));
      if (i == 19) {
        break;
      }
      _listviewData.add(Container(
        width: double.infinity,
        height: 1,
        color: Color.fromARGB(211, 248, 248, 248),
      ));
    }
    return _listviewData;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _list(),
    );
  }
}

class user_news extends StatefulWidget {
  const user_news({super.key});

  @override
  State<user_news> createState() => _user_newsState();
}

class _user_newsState extends State<user_news> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: Text(
          "星期天",
          style: TextStyle(
              fontSize: 12, color: Color.fromARGB(255, 190, 190, 190)),
        ),
      ),
      leading: Container(
          width: 60,
          height: 120,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            // border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Image.network(
            "https://x0.ifengimg.com/res/2020/E0661ABEB216A8E515AE68C9A323C8A0A7E4C9FF_size2037_w1251_h1667.png",
            fit: BoxFit.cover,
          )),
      title: Container(
        height: 60,
        // alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Text(
                "优惠福利",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 119, 79, 3)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Text(
                "消息详情发哈可是对方哈佛拉萨酱豆腐吉拉解放军啊",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13,
                    color: Color.fromARGB(255, 101, 101, 101)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
