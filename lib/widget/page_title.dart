import 'package:flutter/material.dart';


class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             SizedBox(height: 10,),
            Text('Listado de Pasajeros', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Bienvenido, Seleccione una opción', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
    
    
    
      ),
    );
  }
}