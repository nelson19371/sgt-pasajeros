import 'dart:math';

import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops: [0.2, 0.8],
         colors: [
          Color.fromARGB(255, 18, 19, 27),
          Color.fromARGB(255, 25, 26, 30),
          
        ])
      );

  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient

        Container(
          decoration: boxDecoration,
        ),
        Positioned(
          top: -90,
          left: -10,
          child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi /12.0,
      child: Container(
        width: 370,
        height: 370,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(colors: [
           Color.fromARGB(255, 228, 189, 32),
            Color.fromARGB(255, 228, 189, 32),
           
          ] )
        ),
      ),
    );
  }
}