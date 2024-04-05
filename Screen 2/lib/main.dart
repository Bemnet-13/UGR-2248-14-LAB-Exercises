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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.arrow_back),
              Text("iJTracker"),
              Icon(Icons.add_shopping_cart),
              Icon(Icons.notifications_active),
            ],
          ),
          backgroundColor: Colors.blue,

        ),
        body: Column(
          children: [
            Image.asset("./assets/bulb.jpeg"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
            Text(
              "86.90",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(
              height: 10,
            ),
            Text("Somethings are not quite right and that's scary."
                ),
            Text("Variant",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
                ),
      ),
        Row(
          children: [
            Card(
              child: Text(
                "One"
              ),
            ),
        Card(
          child: Text(
              "One"
          ),

          ],
        )
      )


          ],
        ),
      ),
    );
  }
}
