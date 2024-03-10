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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffee App"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        ],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        
        ),
        
        
      ),
      
      body: GridView.count(
        crossAxisSpacing: 21.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 3,
      children: [
        Container(
          child: Text("The americano is a classic coffee drink, popularized in the early 20th century by soldiers stationed in Italy in World War II",
          style: TextStyle(
            inherit: true,
            color: Colors.white,
            backgroundColor: Colors.green,
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),),
          color: Colors.amberAccent,
        ),
        Container(
          child: Text("Turkish coffee is a style of coffee prepared in a cezve using very finely ground coffee beans without filtering.",
          style: TextStyle(
            inherit: true,
            color: Colors.black,
            backgroundColor: Colors.redAccent,
            fontSize: 23.0,
            fontWeight: FontWeight.w300,
          ),),
          color: Colors.blueGrey,
        ),
         Container(
          child: Text("A Spanish Latte is a sweet, creamy coffee made with espresso, condensed milk, and milk. It has a rich, sweet flavor — sweeter than a traditional latte but not as sweet as a latte with syrups added",
          style: TextStyle(
            inherit: true,
            color: Colors.pink,
            backgroundColor: Colors.tealAccent,
            fontSize: 23.0,
            fontWeight: FontWeight.normal,

          ),),
          color: Colors.orange,
        ),
      ],
      ),
    );
  }
}
