import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
        const Padding(
        padding:  EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'Poids:',
            ),
        ),
         Padding(
          padding:  const EdgeInsets.fromLTRB(50, 0, 50, 40),
            child:TextField(

              decoration: InputDecoration (
                filled: true,
                hintText: "Entrer votre poids",
                fillColor: Colors.blue[400],
              ),
            ),
        ),

            const Padding(
              padding:  EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Taille:',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(50, 0, 50, 40),
              child:TextField(

                decoration: InputDecoration (
                  filled: true,
                  hintText: "Entrer votre taille",
                  fillColor: Colors.blue[400],
                ),
              ),
            ),


            ElevatedButton(
                onPressed: () {},
                child: const Text('IMC'),
            ),


          ],
        ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
