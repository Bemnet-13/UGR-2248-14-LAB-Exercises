import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJSON(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body']
    );
  }
  Map <String, dynamic> toJson() {
    return {
      'id' : id,
      'title' : title,
      'body' : body
    };
  }
}
class PostProvider with ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;
  int _currentIndex = 0;

  Future<void> fetchPost() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/${_currentIndex}"));
    if (response.statusCode == 200) {
      Map<String, dynamic> postJson = json.decode(response.body);
      Post newPost = Post.fromJSON(postJson);
      _posts.add(newPost);
      notifyListeners();
    }
    else {
      throw Exception("Failed to fetch post");
    }
  }

  Future<void> addPost(Post post) async {
    final response = await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'userId': 1, // Assuming userId is always 1
        'id': _currentIndex, // Use current index
        'title': post.title,
        'body': post.body,
      }),
    );
    if (response.statusCode == 201) {
      Post newPost = Post.fromJSON(json.decode(response.body));
      incrementIndex();
      _posts.add(newPost);
      notifyListeners();
    }
    else {
      throw Exception("Failed to add post");
    }
  }

  Future<void> deletePost(int id) async {
    final response = await http.delete(Uri.parse("https://jsonplaceholder.typicode.com/posts/${id}"));
    if (response.statusCode == 200) { // Assuming 200 is returned for successful deletion
      _posts.removeWhere((post) => post.id == id);
      notifyListeners();
    }
    else {
      throw Exception("Failed to delete post");
    }
  }

  void incrementIndex() {
    _currentIndex++;
  }
}
