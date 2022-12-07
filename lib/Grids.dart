// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:regador_automatico/main.dart';

class Grids extends State<MyHomePage> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);

  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                    progressColor: Colors.white,
                    percent: 0.8,
                    center: Text(
                      "80%",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white
                        ),
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${hours}:${minutes}',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                            ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          // ignore: sort_child_properties_last
                          child: Text(
                            'Selecione o tempo',
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                              ),
                            ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () async {
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            if (newTime == null) return;

                            setState(() => time = newTime);
                          },
                        )
                      ],
                    )),
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white
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
