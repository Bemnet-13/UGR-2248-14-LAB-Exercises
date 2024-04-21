import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';


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



enum PostEvent { fetch, add, delete }
enum PostState { initial, loading, loaded, error }

class PostBloc extends Bloc<PostEvent, List<Post>> {
  final PostProvider postProvider;

  PostBloc({required this.postProvider}) : super([]);

  @override
  Stream<List<Post>> mapEventToState(PostEvent event) async* {
    if (event == PostEvent.fetch) {
      yield* _mapFetchPostToState();
    } else if (event == PostEvent.add) {
      // Logic to add post
      try {
        final post = await postProvider.fetchPost();
        yield [post]; // Wrap the single post in a list
      } catch (e) {
        // Handle error state
        yield []; // Yield an empty list to signify error
      }
    } else if (event == PostEvent.delete) {
      // Logic to delete post
      try {
        // Perform deletion logic here
        // For example:
        // postProvider.deletePost(post.id);
        // Then, fetch the updated list of posts and yield it
        final posts = await postProvider.fetchPost(); // Assuming fetchPosts fetches all posts
        yield [posts];
      } catch (e) {
        // Handle error state
        yield []; // Yield an empty list to signify error
      }
    }
  }

  Stream<List<Post>> _mapFetchPostToState() async* {
    try {
      yield [Post(id: 0, title: '', body: '')]; // Placeholder loading state
      final post = await postProvider.fetchPost();
      yield [post]; // Yield a list containing the single post instance
    } catch (e) {
      // Handle error state
    }
  }
}


  class PostProvider with ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;
  int _currentIndex = 0;


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



  Future<Post> fetchPost() async {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/$_currentIndex"));
    if (response.statusCode == 200) {
      final postJson = json.decode(response.body) as Map<String, dynamic>;
      final newPost = Post.fromJSON(postJson);
      incrementIndex();
      notifyListeners();
      return newPost;
    } else {
      throw Exception("Failed to fetch post");
    }
  }}