import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EkranLadowania.dart';
import 'Lotto.dart';
import 'MiniLotto.dart';

class HomePage extends StatefulWidget {
  HomePage({required this.lotto});

  final Lotto lotto;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  var screens;

  @override
  void initState() {
    screens = [
      //kolekcja
      LottoScreen(lotto: widget.lotto),
      MiniLotto(
        lotto: widget.lotto,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            body: IndexedStack(
              index: _currentIndex,
              children: screens,
            ),
            bottomNavigationBar: CupertinoTabBar(
              backgroundColor: Colors.white,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              currentIndex: _currentIndex,
              onTap: (index) => setState(() => _currentIndex = index),
              items: [
                BottomNavigationBarItem(icon: Image.asset("icons/lotto.jpeg")),
                BottomNavigationBarItem(icon: Image.asset("icons/a.jpg")),
              ],
            )),
        onWillPop: () async {
          return false;
        });
  }
}
