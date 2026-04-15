class UserEntity {
  final String uId, username, email;

  const UserEntity({
    required this.uId,
    required this.username,
    required this.email,
  });

  Map<String, dynamic> toMap() => {
    'uId': uId,
    'username': username,
    'email': email,
  };
}
