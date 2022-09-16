
import 'package:estilos_flutter/screens/home_screen.dart';
import 'package:estilos_flutter/screens/lista.dart';
import 'package:estilos_flutter/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:estilos_flutter/theme/app_theme.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      theme: AppTheme.lightTheme,
      routes: {
        
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen' :(_) =>const HomeScreen(),
        'lista' :(_) =>  lista()
      },
     
      
    );
  }
}

