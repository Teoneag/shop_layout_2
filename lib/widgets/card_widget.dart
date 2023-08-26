import 'package:flutter/material.dart';
import '../utils/strings.dart';
import '/utils/global_vars.dart';
import '/utils/routes.dart';

Widget cardGeneral({required Widget child}) {
  return Card(
    elevation: 20,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 60,
      ),
      child: child,
    ),
  );
}

Widget cardFeatures(
    BuildContext context, IconData icon, String title, String description) {
  return Expanded(
    child: cardGeneral(
      child: Column(
        children: [
          Icon(icon, size: 50, color: Theme.of(context).primaryColor),
          const SizedBox(height: 15),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

Widget cardPrices(
  BuildContext context,
  int optionNr,
) {
  return Expanded(
    child: cardGeneral(
      child: Column(
        children: [
          Text(
            '${packages[optionNr]![0]}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          Text(
            '\$${packages[optionNr]![1]}',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 15),
          Text('Total value ~ \$${packages[optionNr]![2]}'),
          const SizedBox(height: 5),
          Text('${packages[optionNr]![3]} items'),
          const SizedBox(height: 5),
          Text('Each item limit > \$${packages[optionNr]![4]}'),
          const SizedBox(height: 5),
          Text('${packages[optionNr]![5]}'),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              selectedOptionNr = optionNr;
              if (optionNr < 4) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.buyDigital, (route) => false);
              } else {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.buyPhysical1, (route) => false);
              }
            },
            child: const Text('PURCHASE'),
          ),
        ],
      ),
    ),
  );
}

class CardFaq extends StatefulWidget {
  final String title;
  final String description;

  const CardFaq(this.title, this.description, {super.key});

  @override
  State<CardFaq> createState() => _CardFaqState();
}

class _CardFaqState extends State<CardFaq> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(widget.title),
                if (_isExpanded) const Divider(),
                if (_isExpanded) Text(widget.description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget cardTestimonial(BuildContext context, String name, String testimonial) {
  return cardGeneral(
    child: Column(
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        Text(
          testimonial,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget cardCheck(String text) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const CircleAvatar(
            child: Icon(Icons.check),
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    ),
  );
}
