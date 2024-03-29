import 'package:cycas/ui/admin/tables/main/accessory/tables_accessory_admin.dart';
import 'package:cycas/ui/admin/tables/main/notebook/tables_notebook_admin.dart';
import 'package:cycas/ui/admin/tables/main/phone/tables_phone_admin.dart';
import 'package:cycas/ui/widget/custom_text.dart';
import 'package:flutter/material.dart';

class TablesMainAdmin extends StatelessWidget {
  static const String routeName = "tables_main";

  const TablesMainAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1.0,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          "Таблицы",
          style: TextStyle(color: Color(0xFF424242), fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: const Text(
                "Notnik",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
              color: const Color(0x40e9e9e9),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                children: [
                  Container(
                    color: const Color(0xffffffff),
                    child: Column(
                      children: [
                        CustomText(
                            text: "Ноутбуки",
                            onTap: () {
                              Navigator.pushNamed(context, TablesNotebookAdmin.routeName);
                            }),
                        CustomText(
                            text: "Телефоны",
                            onTap: () {
                              Navigator.pushNamed(context, TablesPhoneAdmin.routeName);
                            }),
                        CustomText(text: "Акксесуары", onTap: () {
                          Navigator.pushNamed(context, TablesAccessoryAdmin.routeName);
                        }),
                      ],
                    ),
                  )
                ],
                title: const Text("В наличии",
                    style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                  color: const Color(0x40e9e9e9),
                  child: ExpansionTile(
                    tilePadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                    children: [
                      Container(
                        color: const Color(0xffffffff),
                        child: Column(
                          children: [
                            CustomText(
                                text: "Ноутбуки",
                                onTap: () {
                                }),
                            CustomText(
                                text: "Телефоны",
                                onTap: () {
                                }),
                            CustomText(
                                text: "Акксесуары",
                                onTap: () {
                                }),
                          ],
                        ),
                      )
                    ],
                    title: const Text("Проданные",
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                  ))),
       /*   SliverToBoxAdapter(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                color: const Color(0x40e9e9e9),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                  children: [
                    Container(
                      color: const Color(0xffffffff),
                      child: Column(
                        children: [
                          CustomText(
                              text: "Ноутбуки",
                              onTap: () {
                                Navigator.pushNamed(context, AddNotebookSellers.routeName);
                              }),
                          CustomText(
                              text: "Телефоны",
                              onTap: () {
                                Navigator.pushNamed(context, AddPhoneSellers.routeName);
                              }),
                          CustomText(
                              text: "Акксесуары",
                              onTap: () {
                                Navigator.pushNamed(context, AddAccessorySellers.routeName);
                              }),
                        ],
                      ),
                    )
                  ],
                  title: const Text("Рассрочка",
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                )),
          ),*/
        ],
      ),
    );
  }
}
