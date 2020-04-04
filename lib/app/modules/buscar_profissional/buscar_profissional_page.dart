import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'buscar_profissional_controller.dart';

class BuscarProfissionalPage extends StatefulWidget {
  final String title;

  const BuscarProfissionalPage({Key key, this.title = "BuscarProfissional"})
      : super(key: key);

  @override
  _BuscarProfissionalPageState createState() => _BuscarProfissionalPageState();
}

class _BuscarProfissionalPageState
    extends ModularState<BuscarProfissionalPage, BuscarProfissionalController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              _buildBuscarProfisisonalHeader(),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Stack _buildBuscarProfisisonalHeader() {
  return Stack(
    children: <Widget>[
      Container(height: 300),
      Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 30.0, // has the effect of softening the shadow
                spreadRadius: 0.0, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  0.0, // vertical, move down 10
                ),
              )
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80))),
      ),
      Positioned.fill(
          top: 50.0,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              width: 320,
              height: 220,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome do profissional',
                        suffixIcon: Icon(Icons.search)),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Especialidade',
                        suffixIcon: Icon(Icons.arrow_drop_down)),
                  ),
                  SizedBox(height: 12),
                  RaisedButton(child: Text('Buscar'), onPressed: () {})
                ],
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          0.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        0.0, // vertical, move down 10
                      ),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
            ),
          )),
      AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Encontrar Profissionais',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
    ],
  );
}

Row _profissionaisLabel() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'Profissionais encontrados',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    ],
  );
}

Container _profissionalCard() {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              radius: 30.0,
            ),
            Text('Dr Dan Mlayah FX'),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          color: Colors.grey[200],
          height: 3,
          thickness: 1,
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    ),
  );
}
