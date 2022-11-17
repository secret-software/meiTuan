import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:meituan/main.dart';
import 'package:meituan/taps/navbar/home_navbar.dart';
import 'package:meituan/taps/navbar/me_navbar.dart';
import 'package:meituan/taps/navbar/news_navbar.dart';
import 'package:meituan/taps/navbar/onlineStore_navbar.dart';
import 'package:meituan/taps/navbar/shoppingCart_navbar.dart';
import 'package:meituan/taps/navbar/test_navbar.dart';
import './taps/home_test.dart';
import './taps/news.dart';
import './taps/online_store.dart';
import './taps/shopping_cart.dart';
import './taps/me.dart';
import './mtIconFont.dart';

// 底部导航栏
class Taps extends StatefulWidget {
  const Taps({super.key});

  @override
  State<Taps> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  int _currentIndex = 0;
  List<Widget> _page = const [
    home(),
    online_store(),
    news(),
    shopping_cart(),
    me()
  ];
  List<Widget> _navbar = [
    home_navbar(),
    online_navbar(),
    news_navbar(),
    shoppingCart_navbar(),
    me_navbar(),
  ];
  List<Object> _shuxin = [
    {
      "name": "home",
      "toolbarHeight": 50,
      "elevation": 0,
      "backgroundColor": Color.fromRGBO(255, 209, 2, .9),
    },
    {
      "name": "online_store",
      "toolbarHeight": 50,
      "elevation": 0,
      "backgroundColor": Color.fromRGBO(255, 209, 2, .9),
    },
    {
      "name": "news",
      "toolbarHeight": 50,
      "elevation": 0,
      "backgroundColor": Color.fromRGBO(255, 209, 2, .9),
    },
    {
      "name": "shopping_cart",
      "toolbarHeight": 50,
      "elevation": 0,
      "backgroundColor": Color.fromRGBO(255, 209, 2, .9),
    },
    {
      "name": "me_navbar",
      "toolbarHeight": 0,
      "elevation": 0,
      "backgroundColor": Color.fromRGBO(255, 209, 2, 0),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _currentIndex == 4 ? 0 : 50,
        elevation: 0,
        backgroundColor: _currentIndex == 0
            ? Color.fromRGBO(255, 209, 2, .9)
            : _currentIndex == 3 || _currentIndex == 2
                ? Color.fromARGB(77, 226, 226, 226)
                : Colors.white,
        title: _navbar[_currentIndex],
      ),
      body: _page[_currentIndex],
      //  Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: const [
      //       mtModeulOne(),
      //       // mtModeulTwo(), mtModeulThree()
      //     ]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          iconSize: 30,
          fixedColor: Color.fromRGBO(255, 209, 2, 1),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.paid), label: "电商"),
            BottomNavigationBarItem(icon: Icon(mtIconFont.news), label: "消息"),
            BottomNavigationBarItem(
                icon: Icon(mtIconFont.shoppingCart), label: "购物车"),
            BottomNavigationBarItem(icon: Icon(mtIconFont.mtIcon), label: "个人"),
            // BottomNavigationBarItem(icon: Icon(mtIconFont.shipin), label: "测试")
          ]),
    );
  }
}
