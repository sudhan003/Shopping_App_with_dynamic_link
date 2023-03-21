import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actionsIconTheme: const IconThemeData(color: Colors.amberAccent),
        toolbarHeight: 150,
        title: const Text('Protein'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
    );
  }
}
