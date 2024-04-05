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
              Icon(Icons.add_box_rounded),
              Text("iJTracker"),
              Icon(Icons.notifications_active),
              Icon(Icons.settings_outlined),
            ],
          ),
          backgroundColor: Colors.blue,

        ),
        body: Column(
          children : [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("assets/latte.jpeg"),
                  ),
                ),
                Text(
                  "Robert Steven",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: Text("LogOut"),
                )

              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
             child: Center(
               child: Text(
                 "Online | 90% remaining",
               ),
             ),
              color: Colors.blue,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Map All devices"),
                            ),
                            Icon(Icons.map)
                          ],
                        )
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Container(
                        child : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Live location"),
                            ),
                            Icon(Icons.location_city_outlined)
                          ],
                        )
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Container(
                        child : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("History Location"),
                            ),
                            Icon(Icons.lock_clock_rounded)
                          ],
                        )
                    )
                  ],
                ),
                Divider(
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Set Geoface"),
                            ),
                            Icon(Icons.web)
                          ],
                        )
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Container(
                        child : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Detail Info"),
                            ),
                            Icon(Icons.info_outline)
                          ],
                        )
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Container(
                        child : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Edit Device"),
                            ),
                            Icon(Icons.edit)
                          ],
                        )
                    )
                  ],
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}
