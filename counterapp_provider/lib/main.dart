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
            title: Text("Counter in Provider"),
          ),
          body: Center(
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
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: (){
                        Provider.of<CountChanger>(context, listen: false).decreaseCount();
                      },
                        child: Icon(Icons.minimize),
                    ),
                    FloatingActionButton(
                      onPressed: (){
                        Provider.of<CountChanger>(context, listen: false).increaseCount();
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                )
              ],
            ),
          ),

        )
    );
  }
}
