import 'package:flutter/material.dart';
import 'package:http_posts_provider/models/post_model.dart';
import 'package:http_posts_provider/models/post_model.dart';
import 'package:http_posts_provider/screens/add_post.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"), backgroundColor: Colors.lightGreen,
      ),
      body: Consumer<PostProvider>(
        builder: (context, postProvider, child) {
          if (postProvider.posts.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("No posts for now!"),
                  ),
                        ElevatedButton(
                        onPressed: () {
                        Navigator.pushNamed(context, '/add_post'); // Navigate to add post screen
                        },
                        child: Text("Add your post"),
                        ),
              ]),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: postProvider.posts.length,
                  itemBuilder: (context, index) {
                    Post post = postProvider.posts[index];
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.post_add, size: 50.0,),
                        title: Text(
                          post.title,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          post.body,
                          textAlign: TextAlign.justify,
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Provider.of<PostProvider>(context, listen: false).deletePost(post.id);
                          },
                          icon: Icon(Icons.delete_rounded, color: Colors.red),
                        ),
                        isThreeLine: true,
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add_post'); // Navigate to add post screen
                },
                child: Text("Add your post"),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<PostProvider>(context, listen: false).fetchPost();
          Provider.of<PostProvider>(context, listen: false).incrementIndex();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
