import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final UserName name;
  final UserPicture picture;
  final String email;

  User({
    required this.name,
    required this.picture,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserName {
  final String title;
  final String first;
  final String last;

  UserName({
    required this.title,
    required this.first,
    required this.last,
  });

  factory UserName.fromJson(Map<String, dynamic> json) => _$UserNameFromJson(json);

  Map<String, dynamic> toJson() => _$UserNameToJson(this);

  @override
  String toString() => '$title $first $last';
}

@JsonSerializable()
class UserPicture {
  final String large;
  final String medium;
  final String thumbnail;

  UserPicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory UserPicture.fromJson(Map<String, dynamic> json) => _$UserPictureFromJson(json);

  Map<String, dynamic> toJson() => _$UserPictureToJson(this);
}
