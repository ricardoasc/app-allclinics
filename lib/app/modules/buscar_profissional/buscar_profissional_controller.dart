import 'package:mobx/mobx.dart';

part 'buscar_profissional_controller.g.dart';

class BuscarProfissionalController = _BuscarProfissionalControllerBase
    with _$BuscarProfissionalController;

abstract class _BuscarProfissionalControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
