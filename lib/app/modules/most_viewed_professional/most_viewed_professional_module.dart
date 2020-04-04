import 'package:allclinics/app/modules/most_viewed_professional/most_viewed_professional_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:allclinics/app/modules/most_viewed_professional/most_viewed_professional_page.dart';

class MostViewedProfessionalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MostViewedProfessionalController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => MostViewedProfessionalPage()),
      ];

  static Inject get to => Inject<MostViewedProfessionalModule>.of();
}
