import 'package:allclinics/app/modules/detalhe_profissional/detalhe_profissional_module.dart';
import 'package:allclinics/app/modules/home/home_controller.dart';
import 'package:allclinics/app/repositories/profissional/profissional_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:allclinics/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => ProfissionalRepository(Firestore.instance)),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/detail-professional', module: DetalheProfissionalModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
