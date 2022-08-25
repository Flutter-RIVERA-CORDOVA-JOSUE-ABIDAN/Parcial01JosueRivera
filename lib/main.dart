import 'package:flutter/material.dart';

void main() {
  runApp(const Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluacion 1 ETPS3',
      home: pantalla(),
    );
  }
}

class pantalla extends StatefulWidget {
  const pantalla({super.key});

  @override
  State<pantalla> createState() => _pantallaState();
}

class _pantallaState extends State<pantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: background(),
    );
  }
}

Widget background() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage("assets/img/fondo.jpg"))),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          titulo(),
          SizedBox(height: 10),
          nombreAlumno(),
          SizedBox(height: 10),
          const Image(
            image: AssetImage('assets/img/foto.png'),
            width: 200,
          ),
          SizedBox(height: 10),
          Icono1(),
          ingresarNombre(),
          SizedBox(height: 10),
          Icono2(),
          ingresarApellido(),
          SizedBox(height: 10),
          Icono3(),
          ingresarUsuario(),
          SizedBox(height: 10),
          Icono4(),
          ingresarPassword(),
          SizedBox(height: 10),
          btnIngresar(),
          SizedBox(height: 10),
          btnCancelar(),
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Text(
    "PARCIAL 1 - ETPS3!",
    style: TextStyle(color: Colors.green, fontSize: 40),
  );
}

Widget nombreAlumno() {
  return Text(
    "Rivera Cordova Josue Abidan - 2536992018",
    style: TextStyle(color: Colors.black, fontSize: 15),
  );
}

Widget Icono1() {
  return Icon(Icons.person);
}

Widget Icono2() {
  return Icon(Icons.wrap_text_outlined);
}

Widget Icono3() {
  return Icon(Icons.person_pin);
}

Widget Icono4() {
  return Icon(Icons.password);
}

Widget ingresarNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Ingrese su nombre", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget ingresarApellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Ingrese su apellido",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget ingresarUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Ingrese su Usuario",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget ingresarPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Ingrese su password",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget btnIngresar() {
  return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
      color: Colors.blueAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5))),
      onPressed: () {},
      child: Text(
        "INGRESAR",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnCancelar() {
  return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 116, vertical: 10),
      color: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5))),
      onPressed: () {},
      child: Text(
        "CANCELAR",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ));
}
