import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detalhe_profissional_controller.dart';

class DetalheProfissionalPage extends StatefulWidget {
  final String title;
  const DetalheProfissionalPage({Key key, this.title = "DetalheProfissional"})
      : super(key: key);

  @override
  _DetalheProfissionalPageState createState() =>
      _DetalheProfissionalPageState();
}

class _DetalheProfissionalPageState extends ModularState<
    DetalheProfissionalPage, DetalheProfissionalController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
