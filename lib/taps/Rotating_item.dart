// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Rotating_item extends StatefulWidget {
  Rotating_item({Key? key}) : super(key: key);

  @override
  _Rotating_itemState createState() => _Rotating_itemState();
}

class _Rotating_itemState extends State<Rotating_item> {
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
              imgdata[i % 5],
              width: 45,
              height: 45,
            ),
            Text(
              "美食",
              style: TextStyle(fontSize: 12),
            )
          ]),
        ),
      );
    }
    List<Widget> GridList = [];
    for (var i = 0; i < 3; i++) {
      GridList.add(GridView.count(
        crossAxisCount: 5,
        children: tempList,
      ));
    }

    return GridList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return _initGridViewData()[index];
            },
            itemCount: _initGridViewData().length,
            pagination: SwiperPagination(),
            // control: SwiperControl(),
          ),
        ));
  }
}
