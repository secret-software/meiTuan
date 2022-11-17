import 'package:flutter/material.dart';
import 'package:meituan/taps.dart';

// 入口方法
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Taps(),
    // theme: ThemeData(backgroundColor: Colors.white24),
  ));
}

// 测试自定义组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text('我是自定义组件！',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Color.fromRGBO(255, 65, 55, .4), fontSize: 40.0)),
    );
  }
}

// 测试
class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 100,
        // height: 100,
        // margin: const EdgeInsets.all(20),
        // color: const Color.fromRGBO(25, 55, 3, .8),
        decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5.0)],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.0,
                  0.3
                ],
                colors: [
                  Color.fromRGBO(255, 209, 2, .9),
                  Color.fromRGBO(244, 244, 244, 0.9)
                ])),
        child: const searchText());
  }
}

// 搜索按钮
class searchButton extends StatelessWidget {
  const searchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 209, 2, .9)),
      child: const Text(
        "搜索",
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}

// 搜索框
class searchText extends StatelessWidget {
  const searchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(19)),
        width: 265,
        height: 38,
        margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
        child: TextField(
          cursorColor: Color.fromARGB(255, 102, 102, 102),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(19)),
            ),
            suffixIcon: searchButton(),
          ),
        ));
  }
}

// 地区选择组件
class areaSelection extends StatelessWidget {
  const areaSelection({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Text(
        '长沙',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      Icon(Icons.keyboard_arrow_down, size: 22.0, color: Colors.black),
    ]);
  }
}

// 扫码图标
class ScanIcon extends StatelessWidget {
  const ScanIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: Image.asset("images/22.png"),
    );
  }
}
