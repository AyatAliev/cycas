import 'package:cycas/ui/sellers/add/add_sellers.dart';
import 'package:cycas/ui/sellers/sell/sell_sellers.dart';
import 'package:cycas/ui/sellers/tables/tables_sellers.dart';
import 'package:cycas/ui/widget/custom_text.dart';
import 'package:flutter/material.dart';

class MainSellers extends StatelessWidget {
  static const String routeName = "main_sellers";

  const MainSellers({Key? key}) : super(key: key);

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
                  fontWeight: FontWeight.w500))),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                child: const Text(
                  "Главная",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("М. Нурия"),
                    Container(
                      width: 48,
                      height: 48,
                      margin: const EdgeInsets.only(right: 16, left: 8),
                      decoration: const BoxDecoration(
                        color: Color(0xF2F2F2F2),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(child: Text("MH")),
                    )
                  ],
                ),
              ),
            ],
          ),
          CustomText(
              text: "Таблицы",
              onTap: () {
                Navigator.pushNamed(context, TablesSellers.routeName);
              }),
          CustomText(
              text: "Продать",
              onTap: () {
                Navigator.pushNamed(context, SellSellers.routeName);
              }),
          CustomText(
            text: "Добавить",
            onTap: () {
              Navigator.pushNamed(context, AddSellers.routeName);
            },
          ),
        ],
      ),
    );
  }
}
