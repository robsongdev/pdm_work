import 'package:flutter/material.dart';
import 'package:pdm_work/pages/page1.dart';
import 'package:pdm_work/pages/page2.dart';
import 'package:pdm_work/pages/page3.dart';
import 'package:pdm_work/widgets/drawner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      drawer: PageDrawer(_pageController),
      body: PageView(
        controller: _pageController,
        //physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}
