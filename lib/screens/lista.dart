 import 'package:flutter/material.dart';

class lista extends StatelessWidget {

 Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Lista de Pasajeros   Bus:3456'),
    backgroundColor: Colors.amber,
    actions: [
            
        IconButton(icon: const Icon(Icons.print), onPressed: () {

                
            })
                
          
            
          ],
    ),
     body: ListView.builder(
      // itemCount: usersData == null ? 0: usersData?.length,
      itemBuilder: (BuildContext context, int index) { 
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              
              children:<Widget> [
                
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Asto:$index Nombre:Nelson Sandoval Rut: 19371 Hora:3:00",
                  // style: TextStyle(
                  //   fontSize: 20.0,
                  //   fontWeight: FontWeight.w500
                  // ),
                  ),
                ),
              
                // Padding(padding: const EdgeInsets.all(10.0),
                // child: Text("Nombre: ${usersData?[index]["firstName"]} ${usersData?[index]["lastName"]}"),
                // )

              ],
            ),
          ),
        );
       },
      
     ),
    
    );
  }
}