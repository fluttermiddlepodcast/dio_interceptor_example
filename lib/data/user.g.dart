// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: UserName.fromJson(json['name'] as Map<String, dynamic>),
      picture: UserPicture.fromJson(json['picture'] as Map<String, dynamic>),
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'email': instance.email,
    };

UserName _$UserNameFromJson(Map<String, dynamic> json) => UserName(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$UserNameToJson(UserName instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

UserPicture _$UserPictureFromJson(Map<String, dynamic> json) => UserPicture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$UserPictureToJson(UserPicture instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
