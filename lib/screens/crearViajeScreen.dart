
// ignore_for_file: file_names

import 'package:estilos_flutter/screens/agregarPasajerosScreen.dart';
import 'package:flutter/material.dart';

import '../wigets/custom_input_field.dart';
// ignore: camel_case_types
class crearViajeScreen extends StatelessWidget {
   
  const crearViajeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  // lista de datos que se envia con el formulario
    final Map<String, String> formValues = {
      'conductor_servicio': 'Nelson',
      'asistente': 'Sandoval',
       'orientacion' : 'subida',
       'servicio': '7000-terminal',
       'numerobus': '357',
       'bus' : 'aeropuerto-1',
       'horaPartida': '3:00'


    };




    return  Scaffold(
      appBar: AppBar(
        title: const Text('CREAR VIAJE'),
      ),
      body: SingleChildScrollView(
         child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child:Form(
            key: myFormKey,
            child: Column(
              children:  [
          
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
               
                value: 'subida',
                items: const [

                  DropdownMenuItem(value: 'subida', child: Text('SUBIDA'),),
                  DropdownMenuItem(value: 'bajada', child: Text('BAJADA'),)
                  
                ], onChanged: (value) { 
                   
                  formValues['role'] = value ?? 'Admin';

                 },


               ),
               
               const SizedBox(height: 30), 
               DropdownButtonFormField<String>(
               
                value: '7000-terminal',
                items: const [

                  DropdownMenuItem(value: '7000-terminal', child: Text('7000-TERMINAL'),),
                  DropdownMenuItem(value: 'terminal-vsl', child: Text('TERMINAL-VSL'),),
                   DropdownMenuItem(value: 'vca-complejo', child: Text('VCA-COMPLEJO'),)

                  
                ], onChanged: (value) { 
                   
                  formValues['role'] = value ?? 'Admin';

                 },


               ),
               const SizedBox(height: 30),
               DropdownButtonFormField<String>(
               
                value: 'aeropuerto-1',
                items: const [

                  DropdownMenuItem(value: 'aeropuerto-1', child: Text('AEROPUERTO 1'),),
                  DropdownMenuItem(value: 'aeropuerto-2', child: Text('AEROPUERTO 2'),),
                   DropdownMenuItem(value:'aeropuerto-3', child: Text('AEROPUERTO 3'),)

                  
                ], onChanged: (value) { 
                   
                  formValues['role'] = value ?? 'Admin';

                 },


               ),
                const SizedBox(height: 30),
               DropdownButtonFormField<String>(
               
                value: '3:00',
                items: const [

                  DropdownMenuItem(value: '3:00', child: Text('3:00'),),
                  DropdownMenuItem(value: '3:30', child: Text('3:30'),),
                   DropdownMenuItem(value: '6:00', child: Text('6:00'),)

                  
                ], onChanged: (value) { 
                   
                  formValues['role'] = value ?? 'Admin';

                 },


               ),
          
               const SizedBox(height: 30), 
               CustomInputField( labelText: 'Conductor del servicio',hintText: 'Nombre del conductor', formProperty: 'conductor_servicio', formValues: formValues,),
               const SizedBox(height: 30),
                CustomInputField(labelText:'Asistente de viaje', hintText: 'Nombre del asistente', formProperty: 'asistente', formValues: formValues,),
               

               
              const SizedBox(height: 30),

               CustomInputField(labelText:'Numero de bus', hintText: 'Numero de bus', formProperty: 'numerobus', formValues: formValues,),
              
               const SizedBox(height: 30),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
    primary: Colors.amber, // Background color
    onPrimary: Colors.white,),
                  child: const SizedBox(
                    
                    width: double.infinity,
                    
                    child: Center(child:  Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Text('Iniciar Viaje',style: TextStyle(fontSize: 25)),
                    ))
                    
                    
                    ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode() );
                     if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                     
                    }
                    print(formValues);
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const agregarPasajerosScreen()),
                      
                       );
                  },
                  
                  )
          
               
          
          
              ],
            ),
          ),
          
          
          
          
          ) ,




      ),
    );
  }
}