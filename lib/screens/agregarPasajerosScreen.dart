

// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class agregarPasajerosScreen extends StatefulWidget {
   
  const agregarPasajerosScreen({Key? key}) : super(key: key);

  @override
  State<agregarPasajerosScreen> createState() => _agregarPasajerosScreenState();
}

// ignore: camel_case_types
class _agregarPasajerosScreenState extends State<agregarPasajerosScreen> {
  @override
  Widget build(BuildContext context) {
    var nombre = '';
    
    var valor='18';
    // ignore: unused_local_variable
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
     // ignore: unused_local_variable
     final Map<String, String> formValues = {
      'rut_pasajero': 'Nelson',
      


    };
    return  Scaffold(
       
      appBar: AppBar(
        title:const Text('Buscar Pasajero'),
        actions: [
            IconButton(icon: const Icon(Icons.search_outlined), onPressed: () {

                
            }),
            

          ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Stack(
          
         children : [  ListView(
          
                children:  <Widget>[
                   Card(child: TextField(
                    onChanged: (value) => valor=value,
                    
                   )),
                   
                
                   Card(child: ListTile(title: Text('NOMBRE DEL PASAJERO: $nombre'),subtitle: const Text('RUT: 1999999999  --  TELEFÓNO: 955110550 '),)),
      
               const SizedBox(height: 30),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   primary: Colors.amber, // Background color
                   onPrimary: Colors.white,),
                   child:  const SizedBox(
                      width: double.infinity,
                      child: Center(child:  Text('Escanear QR',style: TextStyle(fontSize: 25)))
                      
                      
                      ),
                    onPressed: () {
                     print(valor);
                     
                    
                   if(valor=='19') {
                         nombre= 'Nelson';
                       }
                     setState(() {
                      
                     });
                    },
      
                    
                    ),
                    const SizedBox(height: 30),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
    primary: Colors.amber, // Background color
    onPrimary: Colors.white,
     // Text Color (Foreground color)
  ),
                    child:  const SizedBox(
                      width: double.infinity,
                      child: Center(child:  Text('Agregar Pasajero' ,style: TextStyle(fontSize: 25),)),
                      
                      
                      
                      ),
                    onPressed: () {
                     print(valor);
                     
                    
                   if(valor=='19') {
                         nombre= 'Nelson';
                       }
                     setState(() {
                      
                     });
                    },
      
                    
                    ),
                    
                    
                ],
                
                 
                
                    ),
                    
                   
         ],
         
          ),
      )


    );

    
              
              
            
      

       



    
    
    } 
}