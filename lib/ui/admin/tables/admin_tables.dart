import 'dart:ui';

import 'package:cycas/ui/admin/tables/main/tables_main.dart';
import 'package:cycas/ui/widget/statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdminTables extends StatelessWidget {
  static const String routeName = "admin_tables";

  const AdminTables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                  child: const Text(
                    "Таблицы",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 24),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(10, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, TablesMain.routeName);
                      },
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 24),
                            child: SvgPicture.asset("assets/image/folder.svg", color: const Color(0xFF2D9CDB)),
                          ),
                          const Positioned(
                            top: 60,
                            left: 40,
                            child: Text(
                              "Notnik",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                            ),
                          ),
                          const Positioned(
                            top: 90,
                            left: 40,
                            child: Text(
                              "ЦУМ",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xBFFFFFFF)),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
