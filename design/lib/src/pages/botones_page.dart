import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: [_titulos(), _botonesRedondeados()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ])),
      ),
    );

    return Stack(
      children: [gradiente, Positioned(top: -100.0, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular categorie.',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            // canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            // primaryColor: Colors.pinkAccent,
            // textTheme: Theme.of(context)
            //     .textTheme
            //     .copyWith(caption: TextStyle(color: Colors.purple))
            ),
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  size: 30.0,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bubble_chart,
                  size: 30.0,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 30.0,
                ),
                label: ''),
          ],
        ));
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _buttonRedondo(Colors.blue, Icons.border_all, 'General'),
          _buttonRedondo(Colors.purpleAccent, Icons.directions, 'General'),
        ]),
        TableRow(children: [
          _buttonRedondo(Colors.red, Icons.calendar_today, 'General'),
          _buttonRedondo(Colors.green, Icons.android, 'General'),
        ]),
        TableRow(children: [
          _buttonRedondo(Colors.yellow, Icons.app_blocking, 'General'),
          _buttonRedondo(Colors.purpleAccent, Icons.list, 'General'),
        ]),
      ],
    );
  }

  Widget _buttonRedondo(Color color, IconData icono, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
                radius: 35.0,
              ),
              Text(
                texto,
                style: TextStyle(color: color),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget _crearBotonRedondeado( Color color, IconData icono, String texto ) {

  //   return ClipRect(
  //     child: BackdropFilter(
  //       filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
  //       child: Container(
  //         height: 180.0,
  //         margin: EdgeInsets.all(15.0),
  //         decoration: BoxDecoration(
  //           color: Color.fromRGBO(62, 66, 107, 0.7),
  //           borderRadius: BorderRadius.circular(20.0)
  //         ),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: <Widget>[
  //             SizedBox( height: 5.0 ),
  //             CircleAvatar(
  //               backgroundColor: color,
  //               radius: 35.0,
  //               child: Icon( icono, color: Colors.white, size: 30.0 ),
  //             ),
  //             Text( texto , style: TextStyle( color: color )),
  //             SizedBox( height: 5.0 )
  //           ],
  //         ),

  //       ),
  //     ),
  //   );
  // }
}
