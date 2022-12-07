// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Grids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regador Automático"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),

          // ignore: sort_child_properties_last
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.6, // change this value for different results
              crossAxisSpacing: 10,
              mainAxisSpacing: 30,
              padding: EdgeInsets.all(1),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: CircularPercentIndicator(
                    radius: 75,
                    lineWidth: 10,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.black,
                    percent: 0.8,
                    center: Text(
                      "80%",
                      style: TextStyle(fontSize: 40),
                    ),    
                    circularStrokeCap: CircularStrokeCap.round,
                    ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Regar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
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
                    child: Text(
                      'Iniciar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
