import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/models/posts.dart';

import '../posts_state_widgets.dart';

class TenthPage extends StatefulWidget {
  const TenthPage({
    super.key,
  });

  // Page name

  static const name = 'tenthPage/';

  @override
  State<TenthPage> createState() => _TenthPageState();
}

class _TenthPageState extends State<TenthPage> {
  late List<Post> tenthPagePosts;
  static const tenthPagePostsStartingIndex = 90;
  static const tenthPagePostsEndingIndex = 100;

  @override
  void initState() {
    super.initState();
    tenthPagePosts =
        posts.sublist(tenthPagePostsStartingIndex, tenthPagePostsEndingIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Tenth Page'),
        ),
        body: PostLoadedWidget(posts: tenthPagePosts));
  }
}
