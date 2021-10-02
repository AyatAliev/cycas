import 'package:cycas/ui/widget/custom_button.dart';
import 'package:cycas/ui/widget/custom_text_field.dart';
import 'package:cycas/ui/widget/sell_radio.dart';
import 'package:flutter/material.dart';

class SoldNotebookSellers extends StatelessWidget {
  static const String routeName = "sold_notebook_sellers";

  const SoldNotebookSellers({Key? key}) : super(key: key);

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
            margin: const EdgeInsets.only(left: 16, top: 40),
            child: const Text(
              "Продать",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Ноутбук",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF797979)),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: SafeArea(
                  bottom: true,
                  child: CustomScrollView(slivers: [
                    SliverToBoxAdapter(
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 54, vertical: 9),
                          decoration: BoxDecoration(
                            color: const Color(0x40e9e9e9),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            "\n"
                            "ID: 7"
                            "\n"
                            "\nМодель: Asus VivoBook"
                            "\nВидеокарта: GTX1050 4гб"
                            "\nПроцессор: I5-10300H"
                            "\nSSD: 512 гб ОЗУ: 8 гб"
                            "\n"
                            "\nПриход: 44000 сом"
                            "\nПродажа: 48000 сом",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          inputAction: TextInputAction.done,
                          hintText: "Цена",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    const SliverToBoxAdapter(
                      child: SellRadioWidget()
                    ),
                    SliverToBoxAdapter(
                      child: GestureDetector(
                        onTap: () {
                          showDialog(context);
                        },
                        child: Center(
                          child: Container(
                              padding: const EdgeInsets.only(top: 40),
                              child: const CustomButton(text: "Далее")),
                        ),
                      ),
                    )
                  ])),
            ),
          ),
        ],
      ),
    );
  }

  void showDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            child: const SizedBox.expand(child: FlutterLogo()),
            margin: const EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
}
