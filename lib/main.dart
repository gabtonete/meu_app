import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.indigo,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.amberAccent,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.teal,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.indigo,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            // Container(
            //   color: Colors.amber,
            //   height: 30,
            //   width: 300,
            //   child: const Text(
            //     'Teste',
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 28,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       print('Você apertou o botão');
            //     },
            //     child: Text('Teste'))
          ],
        ),
      ),
    );
  }
}
