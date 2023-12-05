import 'package:estudo_modulo/modules/core/providers/application_provider.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton(ApplicationProvider.new);
  }
}
