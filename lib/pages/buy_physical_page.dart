import 'package:flutter/material.dart';
import '/utils/global_vars.dart';
import '/utils/routes.dart';
import '/utils/utils.dart';
import '/widgets/drow_down.dart';
import '/widgets/text_and_textfield.dart';
import '/utils/consts.dart';
import '/widgets/app_bar.dart';
import '/widgets/card_widget.dart';

class BuyPhysicalPage extends StatefulWidget {
  const BuyPhysicalPage({super.key});

  @override
  State<BuyPhysicalPage> createState() => _BuyPhysicalPageState();
}

// TODO add the @c at the bottom of the page
// TODO: make the email validator

class _BuyPhysicalPageState extends State<BuyPhysicalPage> {
  void _scrollToSection(int section) {
    Navigator.of(context).pushNamedAndRemoveUntil(Routes.home, (route) => false,
        arguments: section);
  } // TODO: make this work

  final _formKey = GlobalKey<FormState>();
  int _stepValue = 1;
  final _RegionI = IntW(0);
  final _ShippingI = IntW(0);
  final _emailC = TextEditingController();
  final _nameC = TextEditingController();
  final _streetC = TextEditingController();
  final _zipCodeC = TextEditingController();
  final _cityC = TextEditingController();
  final _stateC = TextEditingController();
  final _selectedCountry = IntW(0);
  final _infoC = TextEditingController();
  final _promoC = TextEditingController();

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
    return Scaffold(
      appBar: AppBar1(_scrollToSection),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text(
                'Physical Products',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              Text(
                'Plan: ${packages[optionNr]![0]}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Price: ${packages[optionNr]![1]}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Profit: ${packages[optionNr]![2]}',
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
              Card(
                child: Column(
                  children: [
                    Text(
                      'Order progress',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 15),
                    LinearProgressIndicator(value: 1 / 3 * _stepValue),
                    const SizedBox(height: 15),
                    Text(orderSteps[_stepValue - 1]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Let's order it!",
                          style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 15),
                      DropDown1('Choose an available region of cards', regions,
                          _RegionI, setState),
                      DropDown1('Choose a shipping method', shippingM,
                          _ShippingI, setState),
                      TextF1('Enter your email', 'example@gmail.com', _emailC,
                          description:
                              "We strongly recomand you to register on mail. We'll send you a track number within 24 hours of this email"),
                      const Text(
                          'Please fill the inpust that you can fill in depending on your region or leave blank'),
                      const SizedBox(height: 10),
                      TextF1('Enter a name', 'John Doe', _nameC),
                      TextF1('Enter a street', 'Example street 69', _streetC),
                      TextF1('Enter a zip code', '123456', _zipCodeC),
                      TextF1('Enter a city', 'Example city', _cityC),
                      TextF1('Enter a state', 'Example state', _stateC),
                      DropDown1('Choose a country', countries, _selectedCountry,
                          setState),
                      TextF1('Enter additional info', 'Example info', _infoC,
                          isMultiLine: true, isOptional: true),
                      TextF1(
                          'Enter a promo code', 'Example promo code', _promoC,
                          isOptional: true),
                      ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          // }
                          setState(() {
                            _stepValue = 2;
                          });
                          // Navigator.of(context).pushNamed(Routes.payment);
                          // TODO finish this
                        },
                        child: const Text('PROCEED TO CHECKOUT'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              if (_stepValue == 2)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment section",
                            style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
