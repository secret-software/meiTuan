import 'package:flutter/material.dart';

// 购物车头部导航栏
class shoppingCart_navbar extends StatefulWidget {
  const shoppingCart_navbar({super.key});

  @override
  State<shoppingCart_navbar> createState() => _shoppingCart_navbarState();
}

class _shoppingCart_navbarState extends State<shoppingCart_navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              "购物车",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              "管理",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          )
        ],
      ),
    );
  }
}
