import 'package:flutter/material.dart';
import 'package:http_posts_provider/models/post_model.dart';
import 'package:provider/provider.dart';

class AddPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController bodyController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: bodyController,
              decoration: InputDecoration(labelText: 'Body'),
              maxLines: null, // Allow multiple lines for body
            ),
            SizedBox(height: 16.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" "),
                ElevatedButton(
                  onPressed: () {
                    String title = titleController.text;
                    String body = bodyController.text;
                    Post newPost = Post(id: 0, title: title, body: body); // Id will be set by the server
                    Provider.of<PostProvider>(context, listen: false).addPost(newPost);
                    Navigator.pop(context); // Navigate back to home screen
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
