import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_convertor_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
  // runApp(const MycupertinoApp());
}

//Types of Widgets
//1. Statelessweigets
//2. Statefulweigets
//3. Inheritenweidgets

//state is data which define the weidgets
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: CurrencyConvertorMaterialPage(),
    );
  }
}

class MycupertinoApp extends StatelessWidget {
  const MycupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
