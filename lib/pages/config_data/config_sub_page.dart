import 'package:flutter/material.dart';

class ConfigSubPage {
  Widget configSalaryPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("เงินเดือนของคุณ"),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              labelText: "เงินเดือน",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget configRentPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ค่าเช่าบ้าน"),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              labelText: "ค่าเช่า",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget configUtilitiesPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ค่าน้ำ ค่าไฟ"),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              labelText: "ค่าน้ำ",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              labelText: "ค่าไฟ",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget configFoodPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ค่าอาหาร"),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              labelText: "ค่าอาหาร",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget configOtherExpensesPage() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("ค่าใช้จ่ายอื่นๆ"),
        ElevatedButton(onPressed: () {}, child: Text("เพ่ิม")),
        TextField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            labelText: "ค่าใช้จ่ายอื่นๆ",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
