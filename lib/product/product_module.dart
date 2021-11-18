import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/product/views/list_product_page.dart';

import 'views/product_page.dart';

class ProductModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ProductPage(),
          children: [
            ChildRoute('/red', child: (_, __) => Container(color: Colors.red)),
            ChildRoute('/blue',
                child: (_, __) => Container(color: Colors.blue)),
            ChildRoute('/yellow',
                child: (_, __) => Container(color: Colors.yellow)),
          ],
        ),
        ChildRoute(
          '/list/:id',
          child: (context, args) => ListProductPage(
            id: args.data,
          ),
          transition: TransitionType.custom,
          duration: const Duration(milliseconds: 500),
          customTransition: myAnimation,
        ),
      ];
}

final myAnimation = CustomTransition(
  transitionBuilder: (_, value1, value2, child) {
    return FadeTransition(
      opacity: value1,
      child: child,
    );
  },
);
