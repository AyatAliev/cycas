import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { cash, installmentPlan }

class SellRadioWidget extends StatefulWidget {
  const SellRadioWidget({Key? key}) : super(key: key);

  @override
  State<SellRadioWidget> createState() => _SellRadioWidgetState();
}

class _SellRadioWidgetState extends State<SellRadioWidget> {
  SingingCharacter? _character = SingingCharacter.cash;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: [
              Radio(
                  value: SingingCharacter.cash,
                  groupValue: _character,
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  }),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _character = SingingCharacter.cash;
                  });
                },
                child: const Text("Наличные"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Radio(
                value: SingingCharacter.installmentPlan,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }),
            GestureDetector(
              onTap: () {
                setState(() {
                  _character = SingingCharacter.installmentPlan;
                });
              },
              child: const Text("Рассрочка"),
            ),
          ],
        )
      ],
    );
  }
}
