import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/fourth_pag.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({
    super.key,
  });
// Page name
  static const name = 'thirdPage/';

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late List<Post> thirdPagePosts;
  static const thirdPagePostsStartingIndex = 20;
  static const thirdPagePostsEndingIndex = 30;

  @override
  void initState() {
    super.initState();
    thirdPagePosts =
        posts.sublist(thirdPagePostsStartingIndex, thirdPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Third Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to Fourth page

                  Navigator.pushNamed(context, FourthPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: thirdPagePosts));
  }
}
