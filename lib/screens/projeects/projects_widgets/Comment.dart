import 'package:flutter/material.dart';

class CommentSection extends StatefulWidget {
  @override
  _CommentSectionState createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  final List<Comment> _comments = [];

  TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(_comments[index].username),
                    subtitle: Text(_comments[index].content),
                  ),
                );
              },
            ),
          ),
           TextField(
              controller: _contentController,
              decoration: InputDecoration(
                hintText: 'Add a comment...',
                   prefixIcon: InkWell(
                     onTap: () {
                setState(() {
                  _comments.add(
                    Comment(
                      username: 'John Doe', // Replace with user's username
                      content: _contentController.text,
                    ),
                  );
                  _contentController.clear();
                });
              },child: Icon(Icons.send,color: Colors.teal,)),
              ),
            ),
        
        ],
      ),
    );
  }
}

class Comment {
  final String username;
  final String content;

  Comment({
    required this.username,
    required this.content,
  });
}
