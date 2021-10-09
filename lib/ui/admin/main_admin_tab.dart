import 'package:cycas/ui/admin/main/admin_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAdminTabScreen extends StatefulWidget {
  static const String routeName = "admin_main_tab";

  const MainAdminTabScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainAdminTabScreenState();
}

class _MainAdminTabScreenState extends State<MainAdminTabScreen> with TickerProviderStateMixin {
  late TabController controller;
  List<Widget> tabBarViewItems = [const AdminMain(), const AdminMain(), const AdminMain(), const AdminMain()];

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: tabBarViewItems.length);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: tabBarViewItems,
          ),
          Positioned(
            bottom: 50,
            child: Container(
              width: 90.0 * tabBarViewItems.length,
              height: 48,
              decoration: const BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: TabBar(
                controller: controller,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xff2D9CDB),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                padding: const EdgeInsets.all(4),
                unselectedLabelColor: Colors.black,
                labelPadding: const EdgeInsets.only(top: 1),
                tabs: const [
                  Tab(
                    child: Text("Главная", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                  Tab(
                    child: Text("Таблицы", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                  Tab(
                    child: Text("Отчеты", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                  Tab(
                    child: Text("Настройки", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
