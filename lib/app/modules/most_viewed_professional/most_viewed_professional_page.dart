import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'most_viewed_professional_controller.dart';

class MostViewedProfessionalPage extends StatefulWidget {
  final String title;
  const MostViewedProfessionalPage(
      {Key key, this.title = "MostViewedProfessional"})
      : super(key: key);

  @override
  _MostViewedProfessionalPageState createState() =>
      _MostViewedProfessionalPageState();
}

class _MostViewedProfessionalPageState extends ModularState<
    MostViewedProfessionalPage, MostViewedProfessionalController> {
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

  Widget _buildStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.grade,
          size: 15,
          color: Colors.orange,
        ),
        Icon(Icons.grade, size: 15, color: Colors.orange),
        Icon(Icons.grade, size: 15, color: Colors.orange),
        Icon(Icons.grade, size: 15, color: Colors.orange),
      ],
    );
  }
}
