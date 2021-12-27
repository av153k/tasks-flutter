import 'package:freezed_annotation/freezed_annotation.dart';
import '../../config/network/base/base_network_model.dart';
part 'user.freezed.dart';
part 'user.g.dart';


@Freezed()
class User extends BaseNetworkModel<User> with _$User{

  const factory User(
      {required String email,
      @Default('') String phone,
      @Default('') String profilePicture,
      @Default('') String username,
      @Default('') String firstName,
      @Default('') String lastName,
      required String token}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  User fromJson(Map<String, dynamic> json){
    return User.fromJson(json);
  }
}
