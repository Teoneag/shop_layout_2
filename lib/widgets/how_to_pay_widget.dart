import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '/utils/consts.dart';

class HowToPay extends StatelessWidget {
  const HowToPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'How to pay via bitcoin?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 15),
            Text('1. Register', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text:
                    'Register on any trusted bitcoin exchange service. We recommend you to create an account on ',
                children: [
                  TextSpan(
                    style: urlStyle,
                    text: 'localbitcoins.com',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>
                          launchUrl(Uri.parse('https://localbitcoins.com/')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text('2. Buy', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            const Text(
                'Go to "Buy bitcoins" section and choose a value trade for your credit card or another payment method. You can sort it for faster deal.'),
            const SizedBox(height: 15),
            Text('3. Send', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            const Text(
                'Now you can check your bitcoins in your profile wallet. Send a payment to our bitcoin address from your profile wallet and enter your password to confirm the transaction.'),
          ],
        ),
      ),
    );
  }
}

//           child: RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(text: 'This is a sentence with a '),
//                 TextSpan(
//                   text: 'link',
//                   style: TextStyle(color: Colors.blue),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () => launch('https://www.example.com'),
//                 ),
//                 TextSpan(text: ' in the middle.'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

