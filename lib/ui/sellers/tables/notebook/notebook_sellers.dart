import 'package:cycas/ui/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class NotebookSellers extends StatelessWidget {
  static const String routeName = "notebook_sellers";

  const NotebookSellers({Key? key}) : super(key: key);

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
              "Таблицы",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Ноутбуки",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF797979)),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: SafeArea(
                bottom: true,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 30,
                    itemBuilder: (context, position) {
                      return GestureDetector(
                        child: Container(
                          color: (position % 2 == 0) ? const Color(0x40e9e9e9) : const Color(0xFFF2F2F2),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("$position",style: const TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold)),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: const EdgeInsets.only(left: 8),
                                      child: const Text(
                                        "Lenovo",
                                        style: TextStyle(
                                            fontSize: 16.0, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: const Text(
                                        "29000 сом",
                                        style: TextStyle(
                                            fontSize: 16.0, color: Colors.black),
                                      ),
                                      margin: const EdgeInsets.only(right: 40),
                                    ),
                                    const Icon(Icons.keyboard_arrow_down_sharp,size: 24),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
