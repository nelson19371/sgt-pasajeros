import 'package:estilos_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

   
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,0.5],
         colors: [
         Color.fromARGB(255, 228, 189, 32),
         Color.fromARGB(255, 228, 189, 32),
         ]


        ) ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const[
             Page1(),
            Page2()
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),

        MainContent(),

      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 243, 158, 0),);
    return SafeArea(

      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          
          Text('Bienvenido',style: textStyle,),
          const SizedBox(height: 420,),
          
           Text('Desliza para continuar',style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold,),),
          
          Expanded(child: Container(),),
          const Icon(Icons.keyboard_arrow_down, size: 100,color: Colors.white,),
         
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: const Color.fromARGB(255, 228, 189, 32),
      height: double.infinity,
      child: const Image(image: AssetImage('assets/Captura10.PNG')));
  }
}


class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

//  LOGIN 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 228, 189, 32),
      child: Column(
        children: [
          const SizedBox(height: 90),
          const Text('Inicio',style: TextStyle(fontSize: 60),),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Correo',
  ),
            ),
            
          ),
          const SizedBox(height: 10),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Contraseña',
  ),
            ),
            
          ),
           const SizedBox(height: 10),
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
              },
              style: TextButton.styleFrom(backgroundColor:const Color.fromARGB(255, 240, 206, 71),
              shape: const StadiumBorder() ),
              child:  const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 40),
                child: Text('Ingresar', style: TextStyle(color: Colors.white,fontSize: 30),),
                
              ),
              ),
          ),
        ],
      ),


    );
  }
}