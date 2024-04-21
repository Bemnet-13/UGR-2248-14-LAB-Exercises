import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final counterProvider = StateProvider<int>((ref) =>  0);



void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Counter in RiverPod"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                onPressed: (){
                  ref.read(counterProvider.notifier).update((state) => state - 1);
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.minimize),
                ),
                FloatingActionButton(
                onPressed: (){
                  ref.read(counterProvider.notifier).update((state) => state + 1);
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
                ),
             ],
            ),
          ],
        ),
      ),

    ));
  }
}
