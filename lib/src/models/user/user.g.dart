// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      phone: json['phone'] as String? ?? '',
      profilePicture: json['profilePicture'] as String? ?? '',
      username: json['username'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'profilePicture': instance.profilePicture,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'token': instance.token,
    };
