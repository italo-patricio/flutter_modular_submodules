import 'package:flutter_modular/flutter_modular.dart';

import 'pages/other_page.dart';

class OtherSubModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => OtherPage());
  }
}
