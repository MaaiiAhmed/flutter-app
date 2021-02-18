import 'package:flutterProject1/models/post.dart';
import 'package:flutterProject1/services/postsService.dart';
import 'package:flutterProject1/views/postDetails.dart';
import 'package:flutter/material.dart';

import 'myCard.dart';

class AllPosts extends StatefulWidget {
  @override
  _AllPostsState createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getAllPosts();
  }

  getAllPosts() async {
    postList = await PostsService().getPosts();

    setState(() {});
  }


  String img = "https://picsum.photos/450/200";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontSize: 23),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: postList == null ? 0 : postList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PostDetails(
                            post: postList[index],
                          )),
                );
              },
              child: MyCard(
                imgLink: img,
                text: postList[index].title,
              ),
            );
          }),
    );
  }
}
