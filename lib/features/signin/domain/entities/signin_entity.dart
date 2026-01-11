import '../../../../app_exports.dart';

class UserEntity {
  final int id;
  final String name;
  final String email;
  final String token;
  final String? phone;
  final String? image;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    this.phone,
    this.image,
  });

  // For easy JSON conversion (optional)
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'token': token,
    'phone': phone,
    'image': image,
  };

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    token: json['token'] as String,
    phone: json['phone'] as String?,
    image: json['image'] as String?,
  );
}

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      email: data?.email ?? '',
      token: data?.token ?? '',
      phone: data?.phone?.toString(),
      image: data?.image?.toString(),
    );
  }
}

extension UserEntityMapper on UserEntity {
  UserModel toModel() {
    return UserModel(
      success: true,
      data: UserData(
        id: id,
        name: name,
        email: email,
        token: token,
        phone: phone,
        image: image,
      ),
      message: 'Success',
    );
  }
}
