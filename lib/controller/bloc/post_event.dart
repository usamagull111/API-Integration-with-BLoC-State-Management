part of 'post_bloc.dart';

// Ui posts Event

@immutable
abstract class PostsEvent {}

// Ui fetch posts Event

@immutable
class FetchPostsEvent extends PostsEvent {}
