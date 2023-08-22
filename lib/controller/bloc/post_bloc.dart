import 'package:flutter/widgets.dart';
import 'package:flutter_api_bloc/models/posts.dart';
import 'package:flutter_api_bloc/services/api_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostState> {
  // Object of PostsApiProvider
  final albumApiProvider = PostsApiProvider();
  PostsBloc() : super(PostInitialState()) {
    // Emitting Posts states
    on<FetchPostsEvent>((event, emit) async {
      emit(PostLoadingState());
      try {
        var posts = await albumApiProvider.fetchPosts();
        emit(PostLoadedState(posts: posts));
      } catch (e) {
        emit(PostErrorState(errorMessage: e.toString()));
      }
    });
  }
}
