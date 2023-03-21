import 'package:dynamic_link/dynamic_link.dart';
import 'package:dynamic_link/product_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Shopit",
          style: TextStyle(color: Colors.amberAccent),
        ),
        toolbarHeight: 150.0,
        actions: [
          IconButton(
              onPressed: () {
                DynamicLink.shareApp();
              },
              icon: const Icon(
                Icons.share,
                color: Colors.amberAccent,
              ))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ProductPage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: const Text(
                "Protein",
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'whey',
                style: TextStyle(color: Colors.amberAccent),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.amberAccent,
                ),
              ),
              tileColor: Colors.black),
        ),
        itemCount: 5,
      ),
    );
  }
}
