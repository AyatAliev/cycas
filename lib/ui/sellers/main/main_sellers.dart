import 'package:cycas/ui/sellers/add/notebook/add_notebook_sellers.dart';
import 'package:cycas/ui/sellers/sold/notebook/sell_notebook_sellers.dart';
import 'package:cycas/ui/sellers/sold/tables/sold_tables_notebook_sellers.dart';
import 'package:cycas/ui/sellers/tables/notebook/notebook_sellers.dart';
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
          automaticallyImplyLeading: false,
          elevation: 1.0,
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text("Smart Point",
              style: TextStyle(
                  color: Color(0xFF424242),
                  fontSize: 16,
                  fontWeight: FontWeight.w500))),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
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
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
              color: const Color(0x40e9e9e9),
              child: ExpansionTile(
                tilePadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                children: [
                  Container(
                    color: const Color(0xffffffff),
                    child: Column(
                      children: [
                        CustomText(
                            text: "Ноутбуки",
                            onTap: () {
                              Navigator.pushNamed(context, TablesNotebookSellers.routeName);
                            }),
                        CustomText(text: "Телефоны", onTap: () {}),
                        CustomText(text: "Акксесуары", onTap: () {}),
                        CustomText(text: "Рассрочка", onTap: () {}),
                      ],
                    ),
                  )
                ],
                title: const Text("В наличии",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                  color: const Color(0x40e9e9e9),
                  child: ExpansionTile(
                    tilePadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    children: [
                      Container(
                        color: const Color(0xffffffff),
                        child: Column(
                          children: [
                            CustomText(
                                text: "Ноутбуки",
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SoldTablesNotebookSellers.routeName);
                                }),
                            CustomText(text: "Телефоны", onTap: () {}),
                            CustomText(text: "Акксесуары", onTap: () {}),
                            CustomText(text: "В рассрочку", onTap: () {}),
                          ],
                        ),
                      )
                    ],
                    title: const Text("Проданные",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ))),
          SliverToBoxAdapter(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                color: const Color(0x40e9e9e9),
                child: ExpansionTile(
                  tilePadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  children: [
                    Container(
                      color: const Color(0xffffffff),
                      child: Column(
                        children: [
                          CustomText(
                              text: "Ноутбуки",
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AddNotebookSellers.routeName);
                              }),
                          CustomText(text: "Телефоны", onTap: () {}),
                          CustomText(text: "Акксесуары", onTap: () {}),
                        ],
                      ),
                    )
                  ],
                  title: const Text("Добавить",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                )),
          ),
        ],
      ),
    );
  }
}
