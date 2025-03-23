import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 139, 150, 150),
      navigationBar: const CupertinoNavigationBar(
        // elevation: 20,
        backgroundColor: Color.fromARGB(255, 139, 150, 150),
        middle: Text("Currency Converter"),
        // centerTitle: true,
        // actions: [],---->top right corrner ke liye hota hai
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            //padding
            //container---noiceee
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(225, 255, 255, 241),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(36.0),
                ),
                placeholder: 'Enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //buttons

            //raised
            //apperas like a text

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: Colors.black,
                onPressed: () {
                  // print(textEditingController.text);

                  setState(() {
                    result = double.parse(textEditingController.text) * 84.5;
                  });
                  // if (kDebugMode) {
                  //   print("ho gaya click bhai nachooooo");
                  // }
                },
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
