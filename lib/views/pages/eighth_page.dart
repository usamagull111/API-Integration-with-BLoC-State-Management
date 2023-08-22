import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/ninth_page.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class EighthPage extends StatefulWidget {
  const EighthPage({
    super.key,
  });

// Page name
  static const name = 'eighthPage/';

  @override
  State<EighthPage> createState() => _EighthPageState();
}

class _EighthPageState extends State<EighthPage> {
  late List<Post> eighthPagePosts;
  static const eighthPagePostsStartingIndex = 70;
  static const eighthPagePostsEndingIndex = 80;

  @override
  void initState() {
    super.initState();
    eighthPagePosts =
        posts.sublist(eighthPagePostsStartingIndex, eighthPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Eighth Page'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigating to ninth page
                  Navigator.pushNamed(context, NinthPage.name);
                },
                icon: const Icon(
                  Icons.navigate_next_rounded,
                ))
          ],
        ),
        body: PostLoadedWidget(posts: eighthPagePosts));
  }
}
