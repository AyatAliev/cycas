import 'package:cycas/ui/sellers/tables/notebook/notebook_sellers.dart';
import 'package:cycas/ui/widget/custom_text.dart';
import 'package:flutter/material.dart';

class TablesSellers extends StatelessWidget {
  static const String routeName = "tables_sellers";

  const TablesSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text("Smart Point",
            style: TextStyle(
                color: Color(0xFF424242),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 16,
            height: 9,
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
              size: 16,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: const Text(
              "Таблицы",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
          ),
          CustomText(text: "Ноутбуки",onTap: () {
          Navigator.pushNamed(context, NotebookSellers.routeName);
          }),
          CustomText(text: "Телефоны",onTap: () {

          }),
          CustomText(text: "Акксесуары", onTap: () {

          }),
          CustomText(text: "Рассрочка", onTap: () {

          }),
        ],
      ),
    );
  }
}
