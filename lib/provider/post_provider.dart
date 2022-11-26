import 'package:flutter/material.dart';
import 'package:instagram_clone_test/models/post_model.dart';
import '../data/posts.dart';

class PostProvider with ChangeNotifier {
  PostModel post = PostModel();
  late List<PostModel> _postList = <PostModel>[];

  List<PostModel> get posts => _postList;
  bool loading = false;

  Future<dynamic> getPostData() async {

    PostDataService service = PostDataService();

    loading = !loading;
    _postList = await service.getAllPosts();
    loading = !loading;
    notifyListeners();
    return null;
  }
}
