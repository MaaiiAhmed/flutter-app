import 'package:flutterProject1/models/post.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  Post post;
  PostDetails({this.post});
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  String img = "https://picsum.photos/450/200";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Post Details",
            style: TextStyle(fontSize: 23),
          ),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage(img),
                fit: BoxFit.cover,
                width: 450,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Text(widget.post.title,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Text(
                  widget.post.body,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
