import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tarefas"),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter no café da manhã'),
            Task('Andar de Bike'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
            Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {print('test')},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        widget.nome,
                        style: TextStyle(fontSize: 24),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                          print(nivel);
                        },
                        child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
              Text(
                'Nivel: $nivel',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
