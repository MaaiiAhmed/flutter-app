import 'package:flutterProject1/models/post.dart';
import 'package:dio/dio.dart';

class PostsService{
  String url = "https://jsonplaceholder.typicode.com/posts"; 


  Future<List<Post>> getPosts() async{
    List<Post> posts = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);

    var data = response.data;
    print(data);
    data.forEach((val){
      posts.add(Post.fromJson(val));
    });

    return posts;

  }
}