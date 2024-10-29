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
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Weather App"),
              centerTitle: true,
              backgroundColor: Color.fromARGB(188, 52, 23, 219),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/langit.jpg"), fit: BoxFit.cover),
              ),
              child: Center(
                child: MyWidget(),
              ),
            )));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "JAKARTA",
          style: TextStyle(color: Colors.white, fontSize: 38),
        ),
        Text(
          "Selasa, 29 Oktober, 2024",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        Text(
          "27°c",
          style: TextStyle(
              color: Colors.white, fontSize: 100, fontWeight: FontWeight.bold),
        ),
        Text(
          "-----",
          style: TextStyle(color: Colors.white, fontSize: 100),
        ),
        Text(
          "Mostly Sunny",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "H:34°C/L:26°C",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
