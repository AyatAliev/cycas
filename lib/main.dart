import 'package:cycas/ui/auth/authorization.dart';
import 'package:cycas/ui/sellers/add/notebook/add_notebook_sellers.dart';
import 'package:cycas/ui/sellers/main/main_sellers.dart';
import 'package:cycas/ui/sellers/sold/notebook/sell_notebook_sellers.dart';
import 'package:cycas/ui/sellers/sold/tables/sold_tables_notebook_sellers.dart';
import 'package:cycas/ui/sellers/tables/notebook/notebook_sellers.dart';
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
        MainSellers.routeName: (BuildContext context) => const MainSellers(),
        TablesNotebookSellers.routeName: (BuildContext context) => const TablesNotebookSellers(),
        Authorization.routeName: (BuildContext context) => Authorization(),
        AddNotebookSellers.routeName: (BuildContext context) => const AddNotebookSellers(),
        SoldNotebookSellers.routeName: (BuildContext context) => const SoldNotebookSellers(),
        SoldTablesNotebookSellers.routeName: (BuildContext context) => const SoldTablesNotebookSellers(),
      },
    );
  }
}
