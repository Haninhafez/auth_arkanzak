class UserModel {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  String? phone;

  String get fullName => '$firstName $lastName';
}
