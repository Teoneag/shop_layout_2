import 'package:flutter/material.dart';

import '/widgets/screen_2_columns_widget.dart';
import '/widgets/button_test_widget.dart';
import '/widgets/payment_widget.dart';
import '/utils/global_vars.dart';
import '/widgets/drop_down_widget.dart';
import '/widgets/text_and_textfield_widget.dart';
import '/utils/strings.dart';
import '/widgets/card_widget.dart';

class BuyPhysicalScreen extends StatefulWidget {
  const BuyPhysicalScreen({super.key});

  @override
  State<BuyPhysicalScreen> createState() => _BuyPhysicalScreenState();
}

// TODO make the progress always be at the top of the page

class _BuyPhysicalScreenState extends State<BuyPhysicalScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailC = TextEditingController(text: purchaseM.email.v);
  final _nameC = TextEditingController(text: purchaseM.name.v);
  final _streetC = TextEditingController(text: purchaseM.street.v);
  final _zipCodeC = TextEditingController(text: purchaseM.zipCode.v);
  final _cityC = TextEditingController(text: purchaseM.city.v);
  final _stateC = TextEditingController(text: purchaseM.state.v);
  final _infoC = TextEditingController(text: purchaseM.info.v);
  final _promoC = TextEditingController(text: purchaseM.promo.v);

  @override
  void dispose() {
    super.dispose();
    _emailC.dispose();
    _nameC.dispose();
    _streetC.dispose();
    _zipCodeC.dispose();
    _cityC.dispose();
    _stateC.dispose();
    _infoC.dispose();
    _promoC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Screen2ColumnsWidget(
      [
        Text(
          'Physical Products',
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
                  DropDown1(
                    'Choose a shipping method',
                    shippingM,
                    purchaseM.shippingI,
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
                  const Text(
                      'Please fill the inpust that you can fill in depending on your region or leave blank'),
                  const SizedBox(height: 10),
                  TextF1(
                    'Enter your name',
                    'John Doe',
                    _nameC,
                    purchaseM.name,
                    autofillHints: AutofillHints.name,
                  ),
                  DropDown1(
                    'Choose your country',
                    countries,
                    purchaseM.country,
                    setState,
                  ),
                  TextF1(
                    'Enter your state',
                    'Example state',
                    _stateC,
                    purchaseM.state,
                    autofillHints: AutofillHints.addressState,
                  ),
                  TextF1(
                    'Enter your city',
                    'Example city',
                    _cityC,
                    purchaseM.city,
                    autofillHints: AutofillHints.addressCity,
                  ),
                  TextF1(
                    'Enter your zip/postal code',
                    '123456',
                    _zipCodeC,
                    purchaseM.zipCode,
                    autofillHints: AutofillHints.postalCode,
                  ),
                  TextF1(
                    'Enter your street and house number',
                    'Example street 69',
                    _streetC,
                    purchaseM.street,
                    autofillHints: AutofillHints.fullStreetAddress,
                  ),
                  TextF1(
                    'Enter additional info',
                    'Example info',
                    _infoC,
                    purchaseM.info,
                    isMultiLine: true,
                    isOptional: true,
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
        Visibility(
          visible: purchaseM.stepValue.v == 2,
          child: PaymentWidget(packages[purchaseM.optionNr.v]![1] as double),
        ),
      ],
    );
  }
}
