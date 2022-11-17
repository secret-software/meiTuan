import 'package:flutter/material.dart';
import 'package:meituan/mtIconFont.dart';
import 'home_test.dart';
import 'me_Rotating.dart';

class me extends StatefulWidget {
  const me({super.key});

  @override
  State<me> createState() => _meState();
}

class _meState extends State<me> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(77, 226, 226, 226),
        child: ListView(
          children: [
            me_top(),
            me_bodyOne(),
            me_bodyTwo(),
            me_bodyThree(),
            rotatingOne(),
            rotatingTwo(),
            advertOne(),
            sxList()
          ],
        ));
  }
}

// 头部
class me_top extends StatefulWidget {
  const me_top({super.key});

  @override
  State<me_top> createState() => _me_topState();
}

class _me_topState extends State<me_top> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [
            0,
            0.2,
            0.8,
            1
          ],
              colors: [
            Color.fromRGBO(241, 250, 255, 1),
            Color.fromARGB(255, 253, 228, 233),
            Color.fromARGB(255, 255, 254, 233),
            Color.fromARGB(255, 255, 253, 223),
          ])),
      width: double.infinity,
      height: 170,
      child: Column(children: [
        // 模块一
        Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  // 头像
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "images/nc1.jpg",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // 名称和成长值
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 昵称
                          Container(
                            child: Text("不羁",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Container(
                            child: Text(
                              "成长值2536  |  提升实名等级",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 65, 65, 65)),
                            ),
                          )
                        ]),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(90, 0, 0, 20),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                // color: Colors.red,
                                // margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text(
                                  "设置",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 65, 65, 65)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text("客服",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 65, 65, 65))),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            )),
        // 模块二
        Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: 280,
                height: 34,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "你已达成新成就！好厉害啊！",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 209, 2, .9),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "去领取",
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            )),
        // 模块三
        Expanded(
            flex: 6,
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 232, 244, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      // 3.1
                      Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                                // color: Color.fromRGBO(255, 209, 2, .9),
                                ),
                            child: Column(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                        child: Icon(
                                          mtIconFont.huangguan,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "白银等级专享",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(10, 3, 0, 0),
                                child: Text("买菜会员折扣",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 61, 151, 184),
                                        fontSize: 13)),
                              )
                            ]),
                          )),
                      Container(
                        color: Color.fromARGB(255, 210, 210, 210),
                        height: 30,
                        width: 1,
                      ),
                      // 3.2
                      Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                                // color: Color.fromARGB(228, 2, 230, 255),
                                ),
                            child: Row(children: [
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Icon(
                                      mtIconFont.renwu,
                                      color: Color.fromARGB(255, 90, 213, 94),
                                      size: 24,
                                    ),
                                  )),
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Text("有奖任务",
                                                    style: TextStyle(
                                                        fontSize: 13)),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color.fromARGB(
                                                      255, 61, 151, 184),
                                                  size: 10,
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 2, 0, 0),
                                            width: double.infinity,
                                            child: Text("签到领卷",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 61, 151, 184),
                                                    fontSize: 13)),
                                          )
                                        ]),
                                  ))
                            ]),
                          )),
                      Container(
                        color: Color.fromARGB(255, 210, 210, 210),
                        height: 30,
                        width: 1,
                      ),
                      // 3.3
                      Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                                // color: Color.fromARGB(228, 2, 230, 255),
                                ),
                            child: Row(children: [
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Icon(
                                      Icons.brightness_high,
                                      color: Color.fromARGB(255, 130, 39, 179),
                                      size: 24,
                                    ),
                                  )),
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Text("点亮成就",
                                                    style: TextStyle(
                                                        fontSize: 13)),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color.fromARGB(
                                                      255, 61, 151, 184),
                                                  size: 10,
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 2, 0, 0),
                                            width: double.infinity,
                                            child: Text("赠外卖卷",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 61, 151, 184),
                                                    fontSize: 13)),
                                          )
                                        ]),
                                  ))
                            ]),
                          )),
                    ],
                  ),
                ))),
      ]),
    );
  }
}

//身体1
class me_bodyOne extends StatefulWidget {
  const me_bodyOne({super.key});

  @override
  State<me_bodyOne> createState() => _me_bodyOneState();
}

class _me_bodyOneState extends State<me_bodyOne> {
  List<Widget> _gridlist() {
    List<Widget> data = [];
    for (var i = 0; i < 4; i++) {
      data.add(Container(
        // height: 80,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Icon(mtIconFont.shipin),
          ),
          Container(
            child: Text(
              "收藏",
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
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.fromLTRB(10, 8, 10, 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          children: _gridlist()),
    );
  }
}

// 身体二
class me_bodyTwo extends StatefulWidget {
  const me_bodyTwo({super.key});

  @override
  State<me_bodyTwo> createState() => _me_bodyTwoState();
}

class _me_bodyTwoState extends State<me_bodyTwo> {
  List<Widget> _gridlist1() {
    List<Widget> data1 = [];
    for (var i = 0; i < 5; i++) {
      data1.add(Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Icon(mtIconFont.shipin),
          ),
          Container(
            child: Text(
              "收藏",
              style: TextStyle(fontSize: 13),
            ),
          )
        ]),
      ));
    }
    return data1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.fromLTRB(10, 8, 10, 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    "我的订单",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Container(
                    child: Container(
                        child: Row(
                      children: [
                        Container(
                            child: Text(
                          "全部订单",
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 199, 199)),
                        )),
                        Container(
                          child: Icon(Icons.arrow_forward_ios,
                              size: 10,
                              color: Color.fromARGB(255, 199, 199, 199)),
                        )
                      ],
                    )),
                  )
                ],
              ),
            )),
        Expanded(
            flex: 7,
            child: Container(
              child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 5,
                  children: _gridlist1()),
            ))
      ]),
    );
  }
}

// 身体三
class me_bodyThree extends StatefulWidget {
  const me_bodyThree({super.key});

  @override
  State<me_bodyThree> createState() => _me_bodyThreeState();
}

class _me_bodyThreeState extends State<me_bodyThree> {
  List<Widget> _gridlist() {
    List<Widget> data = [];
    for (var i = 0; i < 5; i++) {
      data.add(i == 4
          ? Container(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          color: Color.fromARGB(165, 241, 241, 241),
                          width: 1))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.wallet_travel,
                        size: 28,
                      ),
                    ),
                    Container(
                      child: Text(
                        "我的钱包",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Container(
                      child: Text(
                        "进入钱包",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 199, 199, 199)),
                      ),
                    )
                  ]),
            )
          : Container(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "5000",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        "美团借钱",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Container(
                      child: Text(
                        "大约可借",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 199, 199, 199)),
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
      width: double.infinity,
      height: 94,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(10, 8, 10, 0),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 5,
          children: _gridlist()),
    );
  }
}

// 轮播列表1
class rotatingOne extends StatefulWidget {
  const rotatingOne({super.key});

  @override
  State<rotatingOne> createState() => _rotatingOneState();
}

class _rotatingOneState extends State<rotatingOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.fromLTRB(10, 8, 10, 0),
      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
      width: double.infinity,
      height: 180,
      child: me_Rotating_item(),
    );
  }
}

// 轮播列表二
class rotatingTwo extends StatefulWidget {
  const rotatingTwo({super.key});

  @override
  State<rotatingTwo> createState() => _rotatingTwoState();
}

class _rotatingTwoState extends State<rotatingTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.fromLTRB(10, 8, 10, 0),
      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
      width: double.infinity,
      height: 180,
      child: me_Rotating_item(),
    );
  }
}

// 广告一
class advertOne extends StatefulWidget {
  const advertOne({super.key});

  @override
  State<advertOne> createState() => _advertOneState();
}

class _advertOneState extends State<advertOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.fromLTRB(10, 8, 10, 8),
      width: double.infinity,
      height: 80,
      child: Image.network(
        "https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/c83d70cf3bc79f3dccde5a0ab8a1cd11728b29c8.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
