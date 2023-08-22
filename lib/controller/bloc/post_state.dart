part of 'post_bloc.dart';

@immutable
abstract class PostState {}

// Initial state
@immutable
class PostInitialState extends PostState {}

// Loading state
@immutable
class PostLoadingState extends PostState {}

// Loaded state
@immutable
class PostLoadedState extends PostState {
  final List<Post> posts;
  PostLoadedState({required this.posts});
}

// Error state
@immutable
class PostErrorState extends PostState {
  final String errorMessage;
  PostErrorState({required this.errorMessage});
}
