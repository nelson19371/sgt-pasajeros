
// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class tarjetaScreen extends StatelessWidget {
   
  const tarjetaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20) ,
        child:  Center(
        child:  Column(
          children: <Widget> [
          _crearCard1()


          ],
        ),
        ),



      )
    );
  }
  
 Widget _crearCard1() {

return Card(

  child: Column(
      children: const [
        Text("Soy una tarjeta"),
      ],
    ) ,


);



  }
}