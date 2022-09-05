


// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class informesScreen extends StatelessWidget {
   
  
  final _style =const TextStyle(color: Colors.grey, fontSize: 10);

  const informesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Informe de pasajeros'),
                  actions: [
            IconButton(icon: const Icon(Icons.search_outlined), onPressed: () {

                
            }),
             IconButton(icon: const Icon(Icons.print), onPressed: () {

                
            }),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
        child: ListView(
                
                children: [
                  const SizedBox(height: 25,),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    child: TextFormField(
                    
                    decoration: const InputDecoration(labelText: 'Buscar por fecha'),
                    
                      
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    child: TextFormField(
                    
                    decoration: const InputDecoration(labelText: 'Buscar por hora'),
                    
                      
                  ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    child: TextFormField(
                    decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Buscar por N° de Bus',
                      ),
                    ),
                  ),
                  const Text('______________________________________________________________'),
                  const SizedBox(height: 15),
                  const Text(' Orientación: SUBIDA Servicio:Terminal-VSL Bus:Complejo1',style: TextStyle(fontSize: 15),),
                  const Text('______________________________________________________________'),
                  const SizedBox(height: 10,),
                   const Text('    N°Bus              Rut                     Nombre Completo                 Asiento',style: TextStyle(fontSize: 12),),
                  const Text('______________________________________________________________'),
                  const SizedBox(height: 12,),
                   Text('    3517                    19.37                          Nelson Sandoval                              3',style: _style),
                   const Text('______________________________________________________________'),
                    const SizedBox(height: 12,),
                   Text('    3517                    19.37                          Nelson Sandoval                              4',style: _style),
                   const Text('______________________________________________________________'),
                    const SizedBox(height: 12,),
                   Text('    3517                    19.37                          Nelson Sandoval                              5',style: _style),
                   const Text('______________________________________________________________'),
                    const SizedBox(height: 12,),
                   Text('    3517                    19.37                          Nelson Sandoval                              6',style: _style),
                   const Text('______________________________________________________________'),
                  
                ]
        ),
      ),
    );
  }
}
