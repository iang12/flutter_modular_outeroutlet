import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
        centerTitle: true,
        title: const Text('HOME PAGE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/products/red');
              },
              child: const Text('Products Module'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/sales/');
              },
              child: const Text('Vendas Module'),
            ),
          )
        ],
      ),
    );
  }
}
