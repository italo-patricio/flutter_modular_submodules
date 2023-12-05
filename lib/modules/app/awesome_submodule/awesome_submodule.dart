import 'package:flutter_modular/flutter_modular.dart';

import 'pages/awesome_page.dart';

class AwesomeSubModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => AwesomePage());
  }
}
