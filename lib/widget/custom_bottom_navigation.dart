import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromARGB(55, 41, 61, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),label: 'Calendario'),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline_outlined),
        label: 'Gráfica'
        ),
         BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined),
        label: 'Usuarios'
        ),
        
      ],
      
    );
  }
}