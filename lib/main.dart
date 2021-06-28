import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livro sobre Flutter',
      home: MyHomePage(),
    );
  }
}

//Obs: in Dart the underline character ('_')
//makes something private, such as a method or a class

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosso Aplicativo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Vezes que o botão foi acionado',),
            Text('$_counter', style: Theme.of(context).textTheme.display1,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add_box, color: Colors.white),
                  onPressed: () {
                    print('Adicionei qualquer coisa');
                  },
                ),
                IconButton(
                    icon: Icon(Icons.add_a_photo, color: Colors.white),
                    onPressed: () {
                      print('Adicionei uma foto');
                    },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}