import 'package:mobx/mobx.dart';

part 'most_viewed_professional_controller.g.dart';

class MostViewedProfessionalController = _MostViewedProfessionalControllerBase
    with _$MostViewedProfessionalController;

abstract class _MostViewedProfessionalControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
