import 'package:cycas/ui/admin/main/admin_main.dart';
import 'package:cycas/ui/admin/reports/admin_reports.dart';
import 'package:cycas/ui/admin/tables/admin_tables.dart';
import 'package:cycas/ui/admin/tables/main/accessory/tables_accessory_admin.dart';
import 'package:cycas/ui/admin/tables/main/notebook/tables_notebook_admin.dart';
import 'package:cycas/ui/admin/tables/main/phone/tables_phone_admin.dart';
import 'package:cycas/ui/admin/tables/main/tables_main_admin.dart';
import 'package:cycas/ui/auth/authorization.dart';
import 'package:cycas/ui/sellers/add/accessory/add_phone_sellers.dart';
import 'package:cycas/ui/sellers/add/notebook/add_notebook_sellers.dart';
import 'package:cycas/ui/sellers/add/phone/add_phone_sellers.dart';
import 'package:cycas/ui/sellers/in_stock/accessory/in_stock_accessory_sellers.dart';
import 'package:cycas/ui/sellers/in_stock/notebook/in_stock_notebook_sellers.dart';
import 'package:cycas/ui/sellers/in_stock/phone/in_stock_phone_sellers.dart';
import 'package:cycas/ui/sellers/main_sellers.dart';
import 'package:cycas/ui/sellers/sold/accessory_tables/sold_tables_accessory_sellers.dart';
import 'package:cycas/ui/sellers/sold/notebook/sold_notebook_sellers.dart';
import 'package:cycas/ui/sellers/sold/notebook_tables/sold_tables_notebook_sellers.dart';
import 'package:cycas/ui/sellers/sold/phone_tables/sold_tables_phone_sellers.dart';
import 'package:cycas/ui/admin/main_admin_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Authorization.routeName,
      routes: {
        //Sellers
        MainSellers.routeName: (BuildContext context) => const MainSellers(),
        InStockNotebookSellers.routeName: (BuildContext context) => const InStockNotebookSellers(),
        InStockPhoneSellers.routeName: (BuildContext context) => const InStockPhoneSellers(),
        InStockAccessorySellers.routeName: (BuildContext context) => const InStockAccessorySellers(),
        Authorization.routeName: (BuildContext context) => Authorization(),
        AddNotebookSellers.routeName: (BuildContext context) => const AddNotebookSellers(),
        SoldNotebookSellers.routeName: (BuildContext context) => const SoldNotebookSellers(),
        SoldTablesPhoneSellers.routeName: (BuildContext context) => const SoldTablesPhoneSellers(),
        SoldTablesNotebookSellers.routeName: (BuildContext context) => const SoldTablesNotebookSellers(),
        AddPhoneSellers.routeName: (BuildContext context) => const AddPhoneSellers(),
        AddAccessorySellers.routeName: (BuildContext context) => const AddAccessorySellers(),
        SoldTablesAccessorySellers.routeName: (BuildContext context) => const SoldTablesAccessorySellers(),
        // Admin
        AdminMain.routeName: (BuildContext context) => const AdminMain(),
        MainAdminTabScreen.routeName: (BuildContext context) => const MainAdminTabScreen(),
        AdminTables.routeName: (BuildContext context) => const AdminTables(),
        AdminReports.routeName: (BuildContext context) => const AdminReports(),
        TablesMainAdmin.routeName: (BuildContext context) => const TablesMainAdmin(),
        TablesNotebookAdmin.routeName: (BuildContext context) => const TablesNotebookAdmin(),
        TablesPhoneAdmin.routeName: (BuildContext context) => const TablesPhoneAdmin(),
        TablesAccessoryAdmin.routeName: (BuildContext context) => const TablesAccessoryAdmin(),
      },
    );
  }
}
