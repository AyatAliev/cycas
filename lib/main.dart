import 'package:cycas/ui/sellers/add/add_sellers.dart';
import 'package:cycas/ui/sellers/main/main_sellers.dart';
import 'package:cycas/ui/sellers/sell/sell_sellers.dart';
import 'package:cycas/ui/sellers/tables/notebook/notebook_sellers.dart';
import 'package:cycas/ui/sellers/tables/tables_sellers.dart';
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
      initialRoute: MainSellers.routeName,
      routes: {
        MainSellers.routeName: (BuildContext context) => MainSellers(),
        TablesSellers.routeName: (BuildContext context) => TablesSellers(),
        SellSellers.routeName: (BuildContext context) => SellSellers(),
        AddSellers.routeName: (BuildContext context) => AddSellers(),
        NotebookSellers.routeName: (BuildContext context) => NotebookSellers(),
      },
    );
  }
}
