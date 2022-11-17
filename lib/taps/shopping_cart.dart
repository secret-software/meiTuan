import 'package:flutter/material.dart';
import 'package:meituan/mtIconFont.dart';
import 'package:meituan/taps/home_test.dart';
import 'Rotating_item.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class shopping_cart extends StatefulWidget {
  const shopping_cart({super.key});

  @override
  State<shopping_cart> createState() => _shopping_cartState();
}

class _shopping_cartState extends State<shopping_cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(77, 226, 226, 226),
      child: ListView(
        children: [
          top_notice(),
          shoppingCart(),
          recommend(),
          // MyHomePage(),
          recommend1()
        ],
      ),
    );
  }
}

// 头部通知栏
class top_notice extends StatefulWidget {
  const top_notice({super.key});

  @override
  State<top_notice> createState() => _top_noticeState();
}

class _top_noticeState extends State<top_notice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Icon(
                    mtIconFont.mtIcon,
                    size: 22,
                    color: Color.fromRGBO(255, 209, 2, .9),
                  ),
                ),
                Container(
                  child: Text(
                    "电商",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(children: [
              Container(
                child: Text("共"),
              ),
              Container(
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Container(
                child: Text("个商品"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 210, 210, 210),
                  size: 10,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

//购物车
class shoppingCart extends StatefulWidget {
  const shoppingCart({super.key});

  @override
  State<shoppingCart> createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(children: [
        Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          // margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(
                        mtIconFont.mtIcon,
                        size: 22,
                        color: Color.fromRGBO(255, 209, 2, .9),
                      ),
                    ),
                    Container(
                      child: Text(
                        "外卖",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(children: [
                  Container(
                    child: Text(
                      "送至：榕园小区",
                      style: TextStyle(
                        color: Color.fromARGB(255, 210, 210, 210),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 210, 210, 210),
                      size: 10,
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
        // 分割线
        Container(
          color: Color.fromARGB(255, 244, 244, 244),
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          width: double.infinity,
          height: 1,
        ),
        // 店名一
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              checkbox(),
              Container(
                // width: double.infinity,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "古茗（万科金域蓝湾店）",
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        // width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              width: 26,
                              height: 14,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(110, 255, 220, 218),
                                  borderRadius: BorderRadius.circular(3)),
                              padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                              child: Text(
                                "满减",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                              child: Text(
                                "50减1",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
        // 商品1.1
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                checkbox(),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        Container(
                            clipBehavior: Clip.hardEdge,
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.network(
                              "https://x0.ifengimg.com/res/2020/E0661ABEB216A8E515AE68C9A323C8A0A7E4C9FF_size2037_w1251_h1667.png",
                              fit: BoxFit.cover,
                            )),
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 20,
                                  child: Text(
                                    "芋泥",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  child: Text(
                                    "规格：1人份",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 210, 210, 210)),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "￥2",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            ))
                      ],
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                    height: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Color.fromARGB(255, 244, 244, 244))),
                    child: Row(
                      children: [
                        Container(
                          // color: Color.fromARGB(255, 244, 244, 244)
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 238, 238, 238)))),
                          width: 20,
                          child: Icon(
                            mtIconFont.jian,
                            size: 16,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 30,
                          child: Text("0"),
                        ),
                        Container(
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 238, 238, 238)))),
                          child: Icon(
                            mtIconFont.jia,
                            size: 16,
                          ),
                        ),
                      ],
                    ))
              ],
            )),
        // 商品1.2
        shangpin(),
        // 分割线
        Container(
          color: Color.fromARGB(255, 244, 244, 244),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          width: double.infinity,
          height: 1,
        ),
        // 店名二
        dianname(),
        shangpin(),
        shangpin(),
        shangpin(),
        // 分割线
        Container(
          color: Color.fromARGB(255, 244, 244, 244),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          width: double.infinity,
          height: 1,
        ),
        dianname(),
        shangpin(),
        // 分割线
        Container(
          color: Color.fromARGB(255, 244, 244, 244),
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          width: double.infinity,
          height: 1,
        ),
        // 底部结算
        Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          // margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    checkbox(),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "全选",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 210, 210, 210)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(children: [
                  Container(
                    child: Text(
                      "已选0件,",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 210, 210, 210),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "合计:",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "￥0",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 209, 2, .9),
                        borderRadius: BorderRadius.circular(18)),
                    width: 100,
                    height: 36,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "结算外卖",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        )
      ]),
    );
  }
}

// 店名
class dianname extends StatefulWidget {
  const dianname({super.key});

  @override
  State<dianname> createState() => _diannameState();
}

class _diannameState extends State<dianname> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          checkbox(),
          Container(
            // width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "古茗（万科金域蓝湾店）",
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                // width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 26,
                      height: 14,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(110, 255, 220, 218),
                          borderRadius: BorderRadius.circular(3)),
                      padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                      child: Text(
                        "满减",
                        style: TextStyle(color: Colors.red, fontSize: 10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Text(
                        "50减1",
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

// 商品
class shangpin extends StatefulWidget {
  const shangpin({super.key});

  @override
  State<shangpin> createState() => _shangpinState();
}

class _shangpinState extends State<shangpin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            checkbox(),
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Container(
                        clipBehavior: Clip.hardEdge,
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.network(
                          "https://x0.ifengimg.com/res/2020/E0661ABEB216A8E515AE68C9A323C8A0A7E4C9FF_size2037_w1251_h1667.png",
                          fit: BoxFit.cover,
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              child: Text(
                                "芋泥",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Text(
                                "规格：1人份",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 210, 210, 210)),
                              ),
                            ),
                            Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "￥2",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            )
                          ],
                        ))
                  ],
                )),
            Container(
                margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                height: 26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: Color.fromARGB(255, 244, 244, 244))),
                child: Row(
                  children: [
                    Container(
                      // color: Color.fromARGB(255, 244, 244, 244)
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 238, 238, 238)))),
                      width: 20,
                      child: Icon(
                        mtIconFont.jian,
                        size: 16,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Text("0"),
                    ),
                    Container(
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 238, 238, 238)))),
                      child: Icon(
                        mtIconFont.jia,
                        size: 16,
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}

// 复选框
class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool _value = false;

  getCheckBoxBorderColor() {
    if (_value) {
      return const Color(0xFF3C78FF);
    } else {
      return const Color.fromARGB(255, 210, 210, 210);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RoundCheckBox(
          size: 15,
          checkedWidget: const Icon(
            Icons.check,
            color: Colors.white,
            size: 10,
          ),
          checkedColor: Color(0xFF3C78FF),
          uncheckedColor: Color(0x003C78FF),
          border: Border.all(color: getCheckBoxBorderColor(), width: 1),
          isChecked: _value,
          onTap: (selected) {
            this._value = selected!;
            setState(() {});
          }),
    );
  }
}

// 常买外卖推荐
class recommend extends StatefulWidget {
  const recommend({super.key});

  @override
  State<recommend> createState() => _recommendState();
}

class _recommendState extends State<recommend> {
  List<Widget> recommend() {
    List<Widget> data = [];
    for (var i = 0; i < 12; i++) {
      data.add(Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.fromLTRB(0, 0, i == 11 ? 0 : 8, 0),
        decoration: BoxDecoration(
            color: Color.fromARGB(151, 244, 244, 244),
            borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          Container(
            child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    width: 60,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      "盛香厅发快递是捷克洛夫肯定是",
                      style: TextStyle(
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 7),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 210, 210, 210),
                      size: 12,
                    ),
                  )
                ]),
          ),
          Container(
              width: 70,
              height: 70,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                // border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "images/nc1.jpg",
                fit: BoxFit.cover,
              )),
          Container(
              width: 60,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 2),
              decoration: BoxDecoration(
                // border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "3牛筋丸+3千页豆腐",
                style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 12),
              )),
          Container(
              width: 60,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(),
              child: Text(
                "￥20.09",
                style: TextStyle(
                    color: Colors.red,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12),
              )),
          Container(
              width: 70,
              height: 26,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Color.fromARGB(255, 203, 203, 203)),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Text(
                "一键加购",
                style: TextStyle(
                    // color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12),
              )),
        ]),
      ));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(children: [
        Container(
          width: double.infinity,
          child: Text(
            "常买外卖推荐",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: ListView(
            padding: EdgeInsets.all(5),
            scrollDirection: Axis.horizontal,
            children: recommend(),
          ),
        )
      ]),
    );
  }
}

// 推荐
class recommend1 extends StatefulWidget {
  const recommend1({super.key});

  @override
  State<recommend1> createState() => _recommend1State();
}

class _recommend1State extends State<recommend1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 8, 10, 0),
      width: double.infinity,
      child: sxList(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '明教'),
    Tab(text: '霸刀'),
    Tab(text: '天策'),
    Tab(text: '纯阳'),
    Tab(text: '少林'),
    Tab(text: '藏剑'),
    Tab(text: '七秀'),
    Tab(text: '五毒'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: TabBar(
            tabs: myTabs,
            isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
            children:
                myTabs.map((Tab tab) => Center(child: Text("test"))).toList()),
      ),
    );
  }
}
