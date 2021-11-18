import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width * 0.2,
            child: NavigationListener(builder: (context, widget) {
              return Column(
                children: [
                  ListTile(
                    selected: Modular.to.path.endsWith('/red'),
                    title: const Text('Red'),
                    onTap: () => Modular.to.navigate('./red'),
                  ),
                  ListTile(
                    selected: Modular.to.path.endsWith('/blue'),
                    title: const Text('Blue'),
                    onTap: () => Modular.to.navigate('./blue'),
                  ),
                  ListTile(
                    selected: Modular.to.path.endsWith('/yellow'),
                    title: const Text('yellow'),
                    onTap: () => Modular.to.navigate('./yellow'),
                  )
                ],
              );
            }),
          ),
          Expanded(child: RouterOutlet())
        ],
      ),
    );
  }
}
