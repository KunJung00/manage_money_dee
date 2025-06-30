import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manage_money_dee/pages/config_data/config_sub_page.dart';

class ConfigDataPage extends StatefulWidget {
  const ConfigDataPage({super.key});

  @override
  State<ConfigDataPage> createState() => _ConfigDataPageState();
}

class _ConfigDataPageState extends State<ConfigDataPage> {
  List<Widget> subPages = [
    ConfigSubPage().configSalaryPage(),
    ConfigSubPage().configRentPage(),
    ConfigSubPage().configUtilitiesPage(),
    ConfigSubPage().configFoodPage(),
    ConfigSubPage().configOtherExpensesPage(),
  ];
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentPage = index),
                children: subPages,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: FilledButton(
                    onPressed: () {
                      _previousPage();
                    },
                    child: Text("ย้อนกลับ"),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: FilledButton(
                    onPressed: () {
                      _nextPage();
                    },

                    child: Text("บันทึกข้อมูล"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _nextPage() {
    if (_currentPage < subPages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // ทำอะไรก็ได้เมื่อจบหน้า onboarding เช่น Navigator.push()
      log("Done!");
    }
  }

  void _previousPage() {
    log("Current Page: $_currentPage");
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // ทำอะไรก็ได้เมื่อจบหน้า onboarding เช่น Navigator.push()
      log("Done!");
    }
  }
}
