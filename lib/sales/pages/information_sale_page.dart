import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InformationSalePage extends StatefulWidget {
  const InformationSalePage({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<InformationSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VENDAS INFORMATION PAGE'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.pink,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed('./information/page1');
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
