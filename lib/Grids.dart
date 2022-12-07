// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Grids extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Regador Automático"),),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(),
          
      // ignore: sort_child_properties_last
      child: GridView(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
             color: Colors.blue,
             ),
            ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
             color: Colors.blue,
             ),
            ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), 
            color: Colors.blue,
            ),
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
             color: Colors.blue,
             ), 
             child: Align(
              alignment: Alignment.center,
             child: Text('Iniciar',
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontSize: 20,
              ),
            ),
           ),
         )
      ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),
    ),
     ),
    );
  }
}