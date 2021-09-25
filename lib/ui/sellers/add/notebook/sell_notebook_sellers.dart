import 'package:cycas/ui/widget/custom_button.dart';
import 'package:cycas/ui/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNotebookSellers extends StatelessWidget {
  static const String routeName = "add_notebook_sellers";

  const AddNotebookSellers({Key? key}) : super(key: key);

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
              "Добавить",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Ноутбуки",
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
                      child: CustomTextField(
                          hintText: "ID",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "Модель",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "Приход",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "Продажа",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "Процессор",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "Видеокарта",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "HDD / SSD",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextField(
                          hintText: "ОЗУ",
                          inputType: TextInputType.number,
                          textController: TextEditingController()),
                    ),
                    SliverToBoxAdapter(
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Container(
                              padding: const EdgeInsets.only(top: 40),
                              child: const CustomButton(text: "Добавить")),
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
