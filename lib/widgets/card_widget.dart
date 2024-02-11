import 'package:flutter/material.dart';
import '/widgets/button_test_widget.dart';
import '/utils/strings.dart';
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

class CardFeatures extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool isSmall;
  const CardFeatures(
    this.icon,
    this.title,
    this.description, {
    this.isSmall = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return cardGeneral(
      child: IntrinsicHeight(
        child: Column(
          children: [
            if (isSmall)
              Row(
                children: [
                  Icon(
                    icon,
                    size: 50,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              )
            else
              Column(
                children: [
                  Icon(
                    icon,
                    size: 50,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
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
}

class CardPrices extends StatelessWidget {
  final int optionNr;
  const CardPrices(this.optionNr, {super.key});

  @override
  Widget build(BuildContext context) {
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
                purchaseM.optionNr.v = optionNr;
                if (optionNr < 4) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      Routes.buyDigital, (route) => false);
                } else {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      Routes.buyPhysical, (route) => false);
                }
              },
              child: const ButtonTextW('PURCHASE'),
            ),
          ],
        ),
      ),
    );
  }
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

// class CardTestimonial extends StatelessWidget {
//   final String name;
//   final String testimonial;
//   const CardTestimonial(this.name, this.testimonial, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return cardGeneral(
//       child: Column(
//         children: [
//           Text(
//             name,
//             style: Theme.of(context).textTheme.titleLarge,
//           ),
//           const SizedBox(height: 15),
//           Text(
//             testimonial,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }

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
