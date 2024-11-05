import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    super.email,
    super.password,
  });

// factory UserModel.fromJson(Map<dynamic, dynamic> json) {
//   return UserModel(
//     email: json['email'],
//     password: json['password'],
//   );
// }
}
