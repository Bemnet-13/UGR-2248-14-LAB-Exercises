import 'package:flutter/material.dart';
import 'package:http_posts_provider/models/post_model.dart';
import 'package:http_posts_provider/screens/add_post.dart';
import 'package:http_posts_provider/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(PostApp());
}

class PostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),

        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/add_post': (context) => AddPostScreen(),
        },
      ),
    );
  }
}
