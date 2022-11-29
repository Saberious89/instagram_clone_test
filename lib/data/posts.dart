import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:instagram_clone_test/models/post_model.dart';

class PostDataService {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  // var url = Uri.parse(
  //     'https://wallpapergram.ir/wp-img/WallpaperGram.IR_1662039432_3785.jpg');

  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      var response = await http.get(url).timeout(
            const Duration(seconds: 15),
          );
      if (response.statusCode == 200) {
        List items = json.decode(response.body);
        posts = items.map((model) => PostModel.fromJson(model)).toList();
      } else {}
    } catch (e) {
      rethrow;
    }
    return posts;
  }
}
