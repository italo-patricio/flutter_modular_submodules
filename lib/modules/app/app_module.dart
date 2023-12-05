import 'package:estudo_modulo/modules/app/awesome_submodule/other_submodule.dart';
import 'package:estudo_modulo/modules/app/other_submodule/other_submodule.dart';
import 'package:estudo_modulo/modules/core/core_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
    r.module('/other', module: OtherSubModule());
    r.module('/awesome', module: AwesomeSubModule());
  }
}
