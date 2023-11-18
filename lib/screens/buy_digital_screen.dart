import 'package:flutter/material.dart';

import '/widgets/button_test_widget.dart';
import '/widgets/text_and_textfield_widget.dart';
import '/widgets/screen_2_columns_widget.dart';
import '/widgets/payment_widget.dart';
import '/utils/strings.dart';
import '/utils/global_vars.dart';
import '/widgets/card_widget.dart';
import '/widgets/drop_down_widget.dart';

class BuyDigitalScreen extends StatefulWidget {
  const BuyDigitalScreen({super.key});

  @override
  State<BuyDigitalScreen> createState() => _BuyDigitalScreenState();
}

class _BuyDigitalScreenState extends State<BuyDigitalScreen> {
  final _formKey = GlobalKey<FormState>();
  // final _regionI = IntW(0);
  final _emailC = TextEditingController(text: purchaseM.email.v);
  final _promoC = TextEditingController(text: purchaseM.promo.v);

  @override
  Widget build(BuildContext context) {
    return Screen2ColumnsWidget(
      [
        Text(
          'Digital Products',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Text(
          'Plan: ${packages[purchaseM.optionNr.v]![0]}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        Text(
          'Price: ${packages[purchaseM.optionNr.v]![1]}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        Text(
          'Profit: ${packages[purchaseM.optionNr.v]![2]}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        const Text('These products can be used there'),
        const SizedBox(height: 30),
        Text(
          "What's inside?",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        ...whatsInside
            .map(
              (e) => SizedBox(
                width: 500,
                child: cardCheck(e),
              ),
            )
            .toList(),
      ],
      [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's order it!",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 15),
                  DropDown1(
                    'Choose an available region of cards',
                    regions,
                    purchaseM.region,
                    setState,
                  ),
                  TextF1(
                    'Enter your email',
                    'example@gmail.com',
                    _emailC,
                    purchaseM.email,
                    description:
                        "We strongly recomand you to register on mail. We'll send you a track number within 24 hours of this email",
                    autofillHints: AutofillHints.email,
                  ),
                  TextF1(
                    'Enter a promo code',
                    'Example promo code',
                    _promoC,
                    purchaseM.promo,
                    isOptional: true,
                  ),
                  Visibility(
                    visible: purchaseM.stepValue.v == 1,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                        setState(() {
                          purchaseM.stepValue.v = 2;
                        });
                      },
                      child: const ButtonTextW('PROCEED TO CHECKOUT'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        if (purchaseM.stepValue.v == 2)
          PaymentWidget(packages[purchaseM.optionNr.v]![1] as double),
      ],
    );
  }
}
