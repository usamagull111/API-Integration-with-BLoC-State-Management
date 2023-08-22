import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/third_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    super.key,
  });

// Page name
  static const name = 'secondPage/';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late List<Post> secondPagePosts;
  static const secondPagePostsStartingIndex = 10;
  static const secondPagePostsEndingIndex = 20;

  @override
  void initState() {
    super.initState();
    secondPagePosts =
        posts.sublist(secondPagePostsStartingIndex, secondPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Second Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to Third page

                  Navigator.pushNamed(context, ThirdPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: secondPagePosts));
  }
}
