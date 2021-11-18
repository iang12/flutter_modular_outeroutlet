import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SalesInitialPage extends StatefulWidget {
  const SalesInitialPage({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<SalesInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VENDAS PAGE'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed('/sales/information');
                  },
                  child: const Text('Pagina 1'),
                ),
              ),
            ),
          ),
          Expanded(
            child: RouterOutlet(),
            flex: 4,
          )
        ],
      ),
    );
  }
}
