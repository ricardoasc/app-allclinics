import 'package:allclinics/app/modules/detalhe_profissional/detalhe_profissional_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:allclinics/app/modules/detalhe_profissional/detalhe_profissional_page.dart';

class DetalheProfissionalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetalheProfissionalController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => DetalheProfissionalPage()),
      ];

  static Inject get to => Inject<DetalheProfissionalModule>.of();
}
