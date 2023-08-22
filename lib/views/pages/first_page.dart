import 'package:flutter/material.dart';
import 'package:flutter_api_bloc/controller/bloc/post_bloc.dart';
import 'package:flutter_api_bloc/main.dart';
import 'package:flutter_api_bloc/views/pages/second_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../posts_state_widgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, r});

  // Page name
  static const name = '/';

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  static const homePagePostsStartingIndex = 0;
  static const homePagePostsEndingIndex = 10;
  @override
  void initState() {
    super.initState();
    context.read<PostsBloc>().add(FetchPostsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () {
                // Navigating to Second page

                Navigator.pushNamed(context, SecondPage.name);
              },
              icon: const Icon(
                Icons.navigate_next_rounded,
              ))
        ],
      ),
      body: BlocBuilder<PostsBloc, PostState>(
        bloc: context.read<PostsBloc>(),
        builder: (context, state) {
          if (state is PostInitialState) {
            return const PostInitialWidget();
          } else if (state is PostLoadingState) {
            return const PostLoadingWidget();
          } else if (state is PostLoadedState) {
            posts = state.posts;
            var firstPageList = posts.sublist(
                homePagePostsStartingIndex, homePagePostsEndingIndex);
            return PostLoadedWidget(
              posts: firstPageList,
            );
          } else {
            return PostErrorWidget(
                errorMessage: (state as PostErrorState).errorMessage);
          }
        },
      ),
    );
  }
}
