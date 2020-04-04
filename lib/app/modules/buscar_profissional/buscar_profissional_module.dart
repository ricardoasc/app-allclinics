import 'package:allclinics/app/modules/buscar_profissional/buscar_profissional_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:allclinics/app/modules/buscar_profissional/buscar_profissional_page.dart';

class BuscarProfissionalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BuscarProfissionalController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => BuscarProfissionalPage()),
      ];

  static Inject get to => Inject<BuscarProfissionalModule>.of();
}
