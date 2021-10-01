import 'package:cycas/ui/widget/custom_button.dart';
import 'package:cycas/ui/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddAccessorySellers extends StatelessWidget {
  static const String routeName = "add_accessory_sellers";

  const AddAccessorySellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: SafeArea(
          bottom: true,
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(left: 16, top: 40),
                child: const Text(
                  "Добавить",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
                child: const Text(
                  "Аксессуар",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF797979)),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                  hintText: "ID",
                  inputType: TextInputType.number,
                  textController: TextEditingController(),
                  inputAction: TextInputAction.next),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                  hintText: "Наименование",
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  textController: TextEditingController()),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                  hintText: "Приход",
                  inputType: TextInputType.number,
                  inputAction: TextInputAction.next,
                  textController: TextEditingController()),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                  maxLines: 5,
                  hintText: "Дополнительно",
                  inputType: TextInputType.number,
                  inputAction: TextInputAction.next,
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
    );
  }
}
