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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar : AppBar(
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Order Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25.0),
          color: Colors.grey[100],
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Card(
                      color: Colors.teal,
                      child: Row(
                        children: [
                        Icon(Icons.check_circle,
                          size: 40.0,
                        ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Completed | Order completed on",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                     ]
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Order ID'),
                        Text("#2763764"),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Order Date'),
                        Text("April 5, 2024"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Card(
                child: Column(
                  children: [
                    Text("Purchased Items",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.teal,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("Blue T-Shirt"
                                ,style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Size: L",
                                    style: TextStyle(
                                        fontSize: 20.0
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text("Color: Yellow",
                                    style: TextStyle(
                                        fontSize: 20.0
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                      "50.00",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text("Qty: 10",
                                    style: TextStyle(
                                      fontSize: 20.0
                                    ),
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.pinkAccent,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("Hoodie Rose"
                                  ,style: TextStyle(
                                      fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Size: L",
                                    style: TextStyle(
                                        fontSize: 20.0
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text("Color: Yellow",
                                    style: TextStyle(
                                        fontSize: 20.0
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "50.00",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text("Qty: 10",
                                    style: TextStyle(
                                        fontSize: 20.0
                                    ),
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Column(
                  children: [
                    Text("Shipping Info",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Name",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        )),
                        Text("Jacob Jones",
                            style: TextStyle(
                                fontSize: 20.0
                            )
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Phone Number",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            )),
                        Text("+565655664545421",
                            style: TextStyle(
                                fontSize: 20.0
                            )
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Shipment",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            )),
                        Text("Economy",
                            style: TextStyle(
                                fontSize: 20.0
                            )
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

