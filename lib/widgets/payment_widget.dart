import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '/api/cryptocompare_api.dart';
import '/utils/strings.dart';
import '/widgets/how_to_pay_widget.dart';

class PaymentWidget extends StatefulWidget {
  final double price;
  const PaymentWidget(this.price, {super.key});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  bool _isCopied = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment section',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 15),
                const Text('Current exchange rate'),
                const SizedBox(height: 10),
                FutureBuilder(
                  future: CryptoApi.getBtcPrice(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('${widget.price} USD'),
                              const Text(' = '),
                              Text(
                                  '${(widget.price / snapshot.data!).toStringAsFixed(8)} BTC'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                              'Copy our bitcoin adress or scan it below using your phone and send ${(widget.price / snapshot.data!).toStringAsFixed(8)} BTC using your bitcoin wallet'),
                        ],
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  'Be careful and use only clearnet trusted btc services like coinbase, kraken, localbitcoins, blockchain.com etc.',
                  style: TextStyle(
                      color: Colors.red), // TODO make a style from this
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      QrImageView(
                        data: 'bitcoin:<address>',
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                      const SizedBox(height: 10),
                      const Text(btcAdress),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // TODO add animation
                          Clipboard.setData(
                            const ClipboardData(text: btcAdress),
                          ).then((value) => setState(() {
                                _isCopied = true;
                              }));
                        },
                        child: Text(!_isCopied
                            ? 'Copy address to clipboard'
                            : 'Copied to clipboard - tap to copy again'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text('Payment status',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 15),
                // TODO add timer
                const Text(
                    'You have 30 minutes to complete your payment. We reserved chosen products for your order ID. After we receive your payment, you will get an e-mail with your order details and next instructions. If you have any questions, please contact us at.'),
                const SizedBox(height: 10),
                const Text('Waiting for transaction'),
                const SizedBox(height: 10),
                Table(
                  border: TableBorder.all(),
                  children: tableValues
                      .map((e) => TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text(e)),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Text('-')),
                            ),
                          ]))
                      .toList(),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('BUY ANOTHER CARD'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const HowToPay(),
      ],
    );
  }
}
