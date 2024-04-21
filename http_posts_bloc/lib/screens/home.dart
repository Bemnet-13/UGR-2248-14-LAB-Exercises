import 'package:flutter/material.dart';
import 'package:http_posts_bloc/models/post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        backgroundColor: Colors.lightGreen,
      ),
      body: BlocBuilder<PostBloc, List<Post>>(
        builder: (context, state) {
          if (state.isEmpty) {
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
                      BlocProvider.of<PostBloc>(context).add(PostEvent.fetch);
                    },
                    child: Text("Fetch Posts"),
                  ),
                ],
              ),
            );
          } else {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                Post post = state[index];
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
                        // Dispatch delete event with the post to delete
                        BlocProvider.of<PostBloc>(context).add(PostEvent.delete); // Assuming post.id is the identifier of the post
                      },
                      icon: Icon(Icons.delete_rounded, color: Colors.red),
                    ),
                    isThreeLine: true,
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Dispatch fetch event to fetch new posts
          BlocProvider.of<PostBloc>(context).add(PostEvent.fetch);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
