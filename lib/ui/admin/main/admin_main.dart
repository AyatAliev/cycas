import 'dart:ui';

import 'package:cycas/ui/widget/statistics.dart';
import 'package:flutter/material.dart';

class AdminMain extends StatelessWidget {
  static const String routeName = "admin_main";

  const AdminMain({Key? key}) : super(key: key);

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
                    "Главная",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("М. Нурсултан"),
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
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, position) {
                    return GestureDetector(
                      onTap: () {
                        const StatisticsWidget(
                          progress: 0.1,
                          total: '12,000',
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 26),
                        decoration: BoxDecoration(
                          color: const Color(0xFF9CC1F2),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "Smart Point",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const Center(
              heightFactor: 1.3,
              child: StatisticsWidget(
                progress: 0.8,
                total: '18,000',
              ),
            )
          ],
        ),
      ),
    );
  }
}
