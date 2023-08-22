import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/sixth_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({
    super.key,
  });

  // Page name

  static const name = 'fifthPage/';

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  late List<Post> fifthPagePosts;
  static const fifthPagePostsStartingIndex = 40;
  static const fifthPagePostsEndingIndex = 50;

  @override
  void initState() {
    super.initState();
    fifthPagePosts =
        posts.sublist(fifthPagePostsStartingIndex, fifthPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Fifth Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to Sixth page

                  Navigator.pushNamed(context, SixthPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: fifthPagePosts));
  }
}
