import 'package:flutter/foundation.dart';

@immutable
class Strings {
  static const allowLikesTitle = 'Allow likes';
  static const allowLikesDescription = 'By allowing likes, users will be able to press the like button on your post.';
  static const allowLikesStorageKey = 'allow_likes';
  static const allowCommentsTitle = 'Allow comments';
  static const allowCommentsDescription = 'By allowing comments, users will be able to comment on your post.';
  static const allowCommentsStorageKeys = 'allow_comments';

  static const comment = 'comment';

  static const loading = 'Loading...';

  static const person = 'person';
  static const people = 'people';
  static const likedThis = 'liked this';

  const Strings._();
}