import 'package:flutter/material.dart';
// 主页导航栏

// 搜索栏容器
class home_navbar extends StatelessWidget {
  const home_navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: const [areaSelection(), searchText(), ScanIcon()],
      ),
    );
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
          color: const Color.fromRGBO(255, 209, 2, 1)),
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
        margin: const EdgeInsets.fromLTRB(5, 0, 10, 0),
        child: const TextField(
          cursorColor: Color.fromARGB(255, 102, 102, 102),
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            hintText: '瑞兴咖啡（外卖满26减8）',
            prefixIconColor: Colors.black,
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
      Icon(Icons.keyboard_arrow_down, size: 18.0, color: Colors.black),
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
