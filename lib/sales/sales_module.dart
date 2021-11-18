import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/sales/pages/information_sale_page.dart';
import 'package:modular_test/sales/pages/pages.dart';

import 'pages/sales_page.dart';

class SalesModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SalesInitialPage(),
        ),
        ChildRoute(
          '/information',
          child: (_, args) => const InformationSalePage(),
          children: [
            ChildRoute('/page1', child: (_, __) => const Page1()),
            ChildRoute('/page2', child: (_, __) => const Page2()),
            ChildRoute('/page3', child: (_, __) => const Page3()),
          ],
        )
      ];
}
