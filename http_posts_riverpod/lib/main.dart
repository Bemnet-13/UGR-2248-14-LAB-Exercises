import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Model for Post
class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

// Riverpod Provider for managing posts state
final postsProvider = StateNotifierProvider<PostListNotifier, List<Post>>((ref) {
  return PostListNotifier(ref.read);
});

class PostListNotifier extends StateNotifier<List<Post>> {
  final Reader _read;

  PostListNotifier(this._read) : super([]);

  // Fetch posts from JSON Placeholder API
  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      final List<Post> posts = jsonData.map((json) => Post.fromJson(json)).toList();
      state = posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }

  // Delete post by id
  Future<void> deletePost(int id) async {
    final newPosts = state.where((post) => post.id != id).toList();
    state = newPosts;
  }
}

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts App',
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final posts = ref.watch(postsProvider);

          if (posts.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Call deletePost method from the StateNotifierProvider
                    context.read(postsProvider).deletePost(post.id);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call fetchPosts method from the StateNotifierProvider
          context.read(postsProvider.notifier).fetchPosts();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

