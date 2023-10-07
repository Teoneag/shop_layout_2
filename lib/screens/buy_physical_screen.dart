import 'package:flutter/material.dart';
import 'package:shop_layout_2/widgets/button_test_widget.dart';
import '/widgets/scaffold_widget.dart';
import '/widgets/payment_widget.dart';
import '/widgets/progress_bar_widget.dart';
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
    return ScaffoldWidget(
      Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
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
                    const SizedBox(height: 30),
                    const Text('Contact us at example@gmail.com'),
                    const Text('© 2023 $appName Store. All Rights Reserved.'),
                  ],
                ),
              ),
            ),
          ),
          const VerticalDivider(
            width: 5,
          ),
          Expanded(
            child: Column(
              children: [
                ProgressBar(purchaseM.stepValue.v),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(height: 15),
                                    DropDown1(
                                        'Choose an available region of cards',
                                        regions,
                                        purchaseM.region,
                                        setState),
                                    DropDown1(
                                        'Choose a shipping method',
                                        shippingM,
                                        purchaseM.shippingI,
                                        setState),
                                    TextF1(
                                      'Enter your email',
                                      'example@gmail.com',
                                      _emailC,
                                      purchaseM.email,
                                      description:
                                          "We strongly recomand you to register on mail. We'll send you a track number within 24 hours of this email",
                                      isEmail: true,
                                    ),
                                    const Text(
                                        'Please fill the inpust that you can fill in depending on your region or leave blank'),
                                    const SizedBox(height: 10),
                                    TextF1(
                                      'Enter a name',
                                      'John Doe',
                                      _nameC,
                                      purchaseM.name,
                                    ),
                                    TextF1(
                                      'Enter a street',
                                      'Example street 69',
                                      _streetC,
                                      purchaseM.street,
                                    ),
                                    TextF1(
                                      'Enter a zip code',
                                      '123456',
                                      _zipCodeC,
                                      purchaseM.zipCode,
                                    ),
                                    TextF1(
                                      'Enter a city',
                                      'Example city',
                                      _cityC,
                                      purchaseM.city,
                                    ),
                                    TextF1(
                                      'Enter a state',
                                      'Example state',
                                      _stateC,
                                      purchaseM.state,
                                    ),
                                    DropDown1('Choose a country', countries,
                                        purchaseM.country, setState),
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
                                          if (_formKey.currentState!
                                              .validate()) {}
                                          setState(() {
                                            purchaseM.stepValue.v = 2;
                                          });
                                        },
                                        child: const ButtonTextW(
                                            'PROCEED TO CHECKOUT'),
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
                            child: PaymentWidget(
                                packages[purchaseM.optionNr.v]![1] as double),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
