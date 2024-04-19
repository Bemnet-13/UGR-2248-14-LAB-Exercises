import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountChanger(),
      child: MyApp(),
    ),
  );
}

class CountChanger extends ChangeNotifier {
  int count = 0;

  void increaseCount() {
    count++;
    notifyListeners();
  }
  void decreaseCount() {
    count--;
    notifyListeners();
  }
}


class MyApp extends StatelessWidget {
  static int count = 0;

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
            backgroundColor: Theme
                .of(context)
                .colorScheme
                .inversePrimary,
            title: Text("Counter"),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Consumer<CountChanger>(
                  builder: (context, counter, child) {
                    return Text(
                      '${counter.count}',
                    );
                  },
                ),
                Text(
                  '$count',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Provider.of<CountChanger>(context, listen: false).increaseCount();
                    },
                        child: Icon(Icons.minimize)),
                    ElevatedButton(onPressed: (){
                      Provider.of<CountChanger>(context, listen: false).decreaseCount();
                    },
                        child: Icon(Icons.add))
                  ],
                )
              ],
            ),
          ),

        )
    );
  }
}