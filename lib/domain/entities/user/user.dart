import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String username;
  final String fullName;
  final String bio;
  final String image;
  final int posts;
  final int followers;
  final int followings;

  const User({
    required this.username,
    required this.fullName,
    required this.bio,
    required this.image,
    required this.posts,
    required this.followers,
    required this.followings,
  });

  @override
  List<Object?> get props => [
        username,
        fullName,
        bio,
        image,
        posts,
        followers,
        followings,
      ];
}
