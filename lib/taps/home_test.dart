import 'package:flutter/material.dart';
import 'package:meituan/mtIconFont.dart';
import 'package:meituan/taps/Rotating_item.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.0,
                .3
              ],
                  colors: [
                Color.fromRGBO(255, 209, 2, 1),
                Color.fromRGBO(244, 244, 244, 1)
              ])),
          child: Column(children: [
            // topContianer(),
            mtModeulOne(),
            mtModeulTwo(),
            Container(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: sxList(),
            )
          ]),
        )
      ],
    );
  }
}

// 主页模块1
class mtModeulOne extends StatelessWidget {
  const mtModeulOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 20,
          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
          decoration: BoxDecoration(),
          margin: EdgeInsets.all(0),
          child: Text(
            "美团百货，随叫随到",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(),
          child: mtBH(),
        ),
      ]),
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: EdgeInsets.fromLTRB(6, 0, 6, 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
    );
  }
}

// 主页模块2
class mtModeulTwo extends StatelessWidget {
  const mtModeulTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(6, 0, 6, 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Rotating_item(),
    );
  }
}

// 主页模块3
class mtModeulThree extends StatelessWidget {
  const mtModeulThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Container(
        height: double.infinity,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: sxList(),
      )),
    );
  }
}

// 圆形图片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://img2018.cnblogs.com/blog/1304208/201906/1304208-20190619205125807-2127356873.png",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

// 轮播gridview
class levelList extends StatefulWidget {
  const levelList({super.key});

  @override
  State<levelList> createState() => _levelListState();
}

class _levelListState extends State<levelList> {
  List<Widget> _pageviewData() {
    List<String> imgdata = [
      "https://tse4-mm.cn.bing.net/th/id/OIP-C.QFdwl07_aviM1ch2KpyyFgHaEo?pid=ImgDet&rs=1",
      "https://tse1-mm.cn.bing.net/th/id/OIP-C.P3NSGTdAYdyqy5zJpb5QXQHaEo?pid=ImgDet&rs=1",
      "https://tse4-mm.cn.bing.net/th/id/OIP-C.n0_p3rYRuofABd3XudbZnAHaEo?pid=ImgDet&rs=1"
    ];
    List<Widget> pagedata = [];
    for (var i = 0; i < 3; i++) {
      pagedata.add(Container(
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Image.network(imgdata[i]),
      ));
    }
    return pagedata.toList();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: _pageviewData(),
    );
  }
}

// 上下列表
class sxList extends StatefulWidget {
  const sxList({super.key});
  @override
  State<sxList> createState() => _sxListState();
}

class _sxListState extends State<sxList> {
  List<Widget> _twData() {
    List<Widget> data = [];
    for (var i = 0; i < 20; i++) {
      data.add(photoText());
    }
    return data.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: new NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 0.85,
      padding: EdgeInsets.all(0),
      crossAxisCount: 2,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      children: _twData(),
    );
  }
}

// 图文子类
class photoText extends StatefulWidget {
  const photoText({super.key});

  @override
  State<photoText> createState() => _photoTextState();
}

class _photoTextState extends State<photoText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Image.asset(
            "images/nc1.jpg",
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(3, 0, 3, 5),
            padding: EdgeInsets.fromLTRB(3, 3, 3, 0),
            decoration: BoxDecoration(),
            child: Text(
              "【古茗】（法可考虑你的腹肌金域蓝湾）",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  // fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(8, 3, 3, 0),
            child: Text(
              "4.5分 | 已售5000+",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(8, 3, 3, 0),
            child: Row(children: [
              Container(
                margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Color.fromARGB(255, 254, 134, 126), width: 1)),
                child: Text(
                  "26减7",
                  style: TextStyle(fontSize: 10, color: Colors.red),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Color.fromARGB(255, 254, 134, 126), width: 1)),
                child: Text(
                  "56减16",
                  style: TextStyle(fontSize: 10, color: Colors.red),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Color.fromARGB(255, 254, 134, 126), width: 1)),
                child: Text(
                  "126减27",
                  style: TextStyle(fontSize: 10, color: Colors.red),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

// 轮播gridview
class lbGridview extends StatefulWidget {
  const lbGridview({super.key});

  @override
  State<lbGridview> createState() => _lbGridviewState();
}

class _lbGridviewState extends State<lbGridview> {
  List<Widget> _initGridViewData() {
    List<String> imgdata = [
      "https://p0.meituan.net/imeituanbusiness/4579713360f6b07c482d475606dcdaf32232.png",
      "https://p0.meituan.net/imeituanbusiness/36ea5f8aa1429104ef51c9e03fe212a54183.png",
      "https://p0.meituan.net/imeituanbusiness/ea0c6fab93f5070dfc7baa50ac9052a02300.png",
      "https://p0.meituan.net/imeituanbusiness/f8fc99f79983d96a12889d00ad4df41a2868.png",
      "https://p0.meituan.net/imeituanbusiness/982e9a55410baae204a220840b11cc952772.png"
    ];
    List<Widget> tempList = [];
    for (var i = 0; i < 15; i++) {
      tempList.add(
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          alignment: Alignment.center,
          decoration: BoxDecoration(),
          child: Column(children: [
            Image.network(
              imgdata[i],
              width: 45,
              height: 45,
            ),
            Text(
              "文字",
              style: TextStyle(fontSize: 12),
            )
          ]),
        ),
      );
    }
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(0),
      crossAxisSpacing: 10,
      crossAxisCount: 5,
      childAspectRatio: 1, //宽高比例
      children: _initGridViewData(),
    );
  }
}

// 美食百货，随叫随到
class mtBH extends StatefulWidget {
  const mtBH({super.key});

  @override
  State<mtBH> createState() => _mtBHState();
}

// 美团百货gridview
class _mtBHState extends State<mtBH> {
  List<Widget> _initGridViewData() {
    List<String> imgdata = [
      "https://p0.meituan.net/imeituanbusiness/4579713360f6b07c482d475606dcdaf32232.png",
      "https://p0.meituan.net/imeituanbusiness/36ea5f8aa1429104ef51c9e03fe212a54183.png",
      "https://p0.meituan.net/imeituanbusiness/ea0c6fab93f5070dfc7baa50ac9052a02300.png",
      "https://p0.meituan.net/imeituanbusiness/f8fc99f79983d96a12889d00ad4df41a2868.png",
      "https://p0.meituan.net/imeituanbusiness/982e9a55410baae204a220840b11cc952772.png"
    ];
    List<Widget> tempList = [];
    for (var i = 0; i < 5; i++) {
      tempList.add(
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          alignment: Alignment.center,
          decoration: BoxDecoration(),
          child: Column(children: [
            Image.network(
              imgdata[i],
              width: 45,
              height: 45,
            ),
            Text(
              "文字",
              style: TextStyle(fontSize: 12),
            )
          ]),
        ),
      );
    }
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(0),
      crossAxisSpacing: 10,
      crossAxisCount: 5,
      childAspectRatio: 1, //宽高比例
      children: _initGridViewData(),
    );
  }
}
