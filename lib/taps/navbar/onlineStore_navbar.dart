import 'package:flutter/material.dart';
// 电商头部导航栏

class online_navbar extends StatefulWidget {
  const online_navbar({super.key});

  @override
  State<online_navbar> createState() => _online_navbarState();
}

class _online_navbarState extends State<online_navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          child: Text(
            "美团电商",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(children: [
            Icon(Icons.wysiwyg,
                size: 20.0, color: Color.fromARGB(255, 80, 80, 80)),
            Text(
              "订单",
              style: TextStyle(
                  fontSize: 9, color: Color.fromARGB(255, 80, 80, 80)),
            )
          ]),
        ),
        Container(
          child: Column(children: [
            Icon(Icons.grid_view,
                size: 20.0, color: Color.fromARGB(255, 80, 80, 80)),
            Text("更多",
                style: TextStyle(
                    fontSize: 9, color: Color.fromARGB(255, 80, 80, 80)))
          ]),
        )
      ],
    ));
  }
}
