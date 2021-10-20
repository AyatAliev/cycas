import 'package:flutter/material.dart';

class TablesAccessoryAdmin extends StatelessWidget {
  static const String routeName = "tables_accessory";

  const TablesAccessoryAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text("Smart Point",
            style: TextStyle(color: Color(0xFF424242), fontSize: 16, fontWeight: FontWeight.w500)),
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
              "Smart Point",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Аксессуары",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF797979)),
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
                      return Container(
                        color: (position % 2 == 0) ? const Color(0x40e9e9e9) : const Color(0xFFF2F2F2),
                        child: ExpansionTile(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Наименование: Браслет"),
                                                Text("Приход: 140000 сом"),
                                                Text("Продажа: 150000 сом"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(padding: const EdgeInsets.symmetric(horizontal: 8)),
                                      Flexible(
                                        child: Row(
                                          children: const [
                                            Expanded(child: Text("Дополнительно: я хз что здесь может быть"))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                            )
                          ],
                          title: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("$position",
                                        style: const TextStyle(
                                            fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: const EdgeInsets.only(left: 12),
                                      child: const Text(
                                        "Iphone 13 Pro Max",
                                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "150000 cом",
                                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                                    ),
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
