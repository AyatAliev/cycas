import 'package:cycas/ui/widget/custom_button.dart';
import 'package:cycas/ui/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SellNotebookSellers extends StatelessWidget {
  static const String routeName = "sell_notebook_sellers";

  const SellNotebookSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SingingCharacter? _character = SingingCharacter.lafayette;

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
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Row(
                              children: [
                                Radio(
                                    value: SingingCharacter.lafayette,
                                    groupValue: _character,
                                    focusColor: Colors.black,
                                    hoverColor: Colors.black,
                                    onChanged: (SingingCharacter? value) {
                                    _character = value;
                                    }),
                                const Text("Наличные",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: SingingCharacter.jefferson,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                  _character = value;
                                  }),

                              const Text("Рассрочка",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16)),
                            ],
                          )
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: GestureDetector(
                        onTap: () {},
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
}

enum SingingCharacter { lafayette, jefferson }
