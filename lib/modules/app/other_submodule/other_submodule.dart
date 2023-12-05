import 'package:flutter_modular/flutter_modular.dart';

import 'pages/other_page.dart';
import 'providers/other_provider.dart';

class OtherSubModule extends Module {
  @override
  void binds(i) {
    i.add(OtherProvider.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => OtherPage());
  }
}
