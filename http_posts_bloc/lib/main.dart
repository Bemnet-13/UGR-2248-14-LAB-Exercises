import 'package:flutter/material.dart';
import 'package:http_posts_bloc/models/post_model.dart';
import 'package:http_posts_bloc/screens/home.dart';
import 'package:http_posts_bloc/screens/add_post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final PostBloc postBloc = PostBloc(postProvider: PostProvider());
  runApp(PostApp(postBloc: postBloc));
}

class PostApp extends StatelessWidget {
  final PostBloc postBloc;

  PostApp({required this.postBloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider<PostBloc>(
          create: (context) => postBloc,
          child: HomePage(),
        ),
        '/add_post': (context) => AddPostScreen(),
      },
    );
  }
}
