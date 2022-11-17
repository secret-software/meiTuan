import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meituan/mtIconFont.dart';
import 'home_test.dart';

class online_store extends StatefulWidget {
  const online_store({super.key});

  @override
  State<online_store> createState() => _online_storeState();
}

class _online_storeState extends State<online_store> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0,
                .2,
                1
              ],
              colors: [
                Colors.white,
                Colors.white,
                Color.fromARGB(77, 226, 226, 226)
              ]),
        ),
        child: ListView(
          children: [
            searchText(),
            crumbs(),
            spListview(),
            xrzxAndxsms(),
            pubuliu()
          ],
        ));
  }
}

// 搜索块
class searchText extends StatelessWidget {
  const searchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(19)),
        // width: 205,
        // height: 38,
        // margin: const EdgeInsets.fromLTRB(5, 3, 10, 0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(19)),
              width: 340,
              height: 38,
              margin: const EdgeInsets.fromLTRB(0, 3, 6, 0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 102, 102, 102),
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: '瑞兴咖啡（外卖满26减8）',
                  prefixIconColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                  ),
                  suffixIcon: Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text("搜索")),
                ),
              ),
            ),
            Icon(
              mtIconFont.shoppingCart,
              size: 24,
            )
          ],
        ));
  }
}

// 面包屑
class crumbs extends StatelessWidget {
  const crumbs({super.key});
  List<Widget> crumbsList() {
    List<Widget> data = [];
    for (var i = 0; i < 7; i++) {
      data.add(Container(
        height: 18,
        margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
        padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 222, 222, 222),
            borderRadius: BorderRadius.circular(9)),
        child: Text(
          i % 2 == 0
              ? i == 6
                  ? "小果真粒"
                  : "早餐奶"
              : "饮料",
          style: TextStyle(fontSize: 10),
        ),
      ));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Row(
        children: crumbsList(),
      ),
    );
  }
}

// 进度条水平listview
class spListview extends StatelessWidget {
  const spListview({super.key});
  List<Widget> _splist() {
    List<Widget> data = [];
    List<Widget> icon = [
      Icon(
        mtIconFont.youhuihuodong1,
        size: 38,
        color: Colors.red,
      ),
      Icon(
        mtIconFont.shipin,
        size: 38,
        color: Color.fromARGB(255, 255, 166, 32),
      ),
      Icon(
        mtIconFont.shumadianqi,
        size: 38,
        color: Color.fromARGB(255, 57, 151, 252),
      ),
      Icon(
        mtIconFont.icon_hangyefenlei,
        size: 38,
        color: Color.fromARGB(255, 255, 131, 243),
      )
    ];
    List<String> text = ["领卷中心", "食品饮料", "数码家电", "分类中心"];
    for (var i = 0; i < 10; i++) {
      data.add(Container(
        margin: EdgeInsets.fromLTRB(13, 0, i == 9 ? 0 : 13, 0),
        child: Column(children: [
          icon[i % 4],
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(
              text[i % 4],
              style: TextStyle(fontSize: 13),
            ),
          )
        ]),
      ));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _splist(),
      ),
    );
  }
}

// 新人专享与限时秒杀
class xrzxAndxsms extends StatelessWidget {
  const xrzxAndxsms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
      width: double.infinity,
      height: 130,
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 130,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.4],
                    colors: [Color.fromARGB(255, 255, 215, 212), Colors.white]),
                borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      "新人专享",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "低至五折",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  )
                ],
              )),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.network(
                            "https://img14.360buyimg.com/n0/jfs/t1/201578/31/15673/77560/619479ceEd1bde507/c0dab826b71e0b84.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.network(
                            "https://img14.360buyimg.com/n0/jfs/t1/201578/31/15673/77560/619479ceEd1bde507/c0dab826b71e0b84.jpg"),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 130,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.4],
                    colors: [Color.fromARGB(255, 255, 215, 212), Colors.white]),
                borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      "限时秒杀",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "秒杀",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  )
                ],
              )),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.network(
                            "https://img14.360buyimg.com/n0/jfs/t1/201578/31/15673/77560/619479ceEd1bde507/c0dab826b71e0b84.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.network(
                            "https://img14.360buyimg.com/n0/jfs/t1/201578/31/15673/77560/619479ceEd1bde507/c0dab826b71e0b84.jpg"),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

// 瀑布流
class pubuliu extends StatefulWidget {
  const pubuliu({super.key});

  @override
  State<pubuliu> createState() => _pubuliuState();
}

class _pubuliuState extends State<pubuliu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: sxList(),
    );
  }
}
