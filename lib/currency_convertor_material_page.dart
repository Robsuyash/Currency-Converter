import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  // double result=0; can create a mutable constructor
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 139, 150, 150),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(50),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 139, 150, 150),
      appBar: AppBar(
        // elevation: 20,
        backgroundColor: const Color.fromARGB(255, 139, 150, 150),
        title: const Text("Currency Converter"),
        centerTitle: true,
        // actions: [],---->top right corrner ke liye hota hai
      ),
      body: Center(
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
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  //     label: Text(
                  //   'Enter the amount in USD',
                  //   style: TextStyle(color: Colors.white),
                  // )
                  hintText: 'Enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(153, 0, 0, 0),
                  ),
                  // prefixText: '\$ ',
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: const Color.fromARGB(137, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //buttons

            //raised
            //apperas like a text

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // print(textEditingController.text);

                  setState(() {
                    result = double.parse(textEditingController.text) * 84.5;
                  });
                  // if (kDebugMode) {
                  //   print("ho gaya click bhai nachooooo");
                  // }
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 10,
                  backgroundColor: const Color.fromARGB(109, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
