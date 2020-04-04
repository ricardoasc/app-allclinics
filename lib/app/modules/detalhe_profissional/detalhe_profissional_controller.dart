import 'package:mobx/mobx.dart';

part 'detalhe_profissional_controller.g.dart';

class DetalheProfissionalController = _DetalheProfissionalControllerBase
    with _$DetalheProfissionalController;

abstract class _DetalheProfissionalControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
