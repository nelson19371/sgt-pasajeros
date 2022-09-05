import 'package:estilos_flutter/screens/crearViajeScreen.dart';
import 'package:estilos_flutter/screens/home_screen.dart';
import 'package:estilos_flutter/screens/informesScreen.dart';
import 'package:flutter/material.dart';



class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

   
  
  
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
         TableRow(children: [
          _SigleCard(text: 'Generar Reserva',direccion: crearViajeScreen(),),
          

        ],
        ),
         TableRow(children: [
          _SigleCard(text: 'Consulta General',direccion: HomeScreen(),),
          

        ],
        ),
        
         TableRow(children: [
          _SigleCard(text: 'Listado de Pasajeros',direccion: informesScreen()),
          

        ],
        ),
        

      ],
     
    );
  }
}


class _SigleCard extends StatelessWidget {
  final String text;
  final dynamic direccion;

  // ignore: unused_element
  const _SigleCard({super.key, required this.text, required this.direccion});




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      height: 140,
      
      decoration: BoxDecoration(
        color: const Color.fromARGB(177, 36, 36, 38),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: ElevatedButton(
            
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(350, 100)),
   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 228, 189, 32),),
        
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: const BorderSide(color: Colors.white,)
    )
  )
),
            onPressed: (() {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => direccion),
  );
              
            
          })
            
          , child: Text(text,style: const TextStyle(fontSize: 30),),
          ),
        )
         
        ],
      ),
    );
  }
}