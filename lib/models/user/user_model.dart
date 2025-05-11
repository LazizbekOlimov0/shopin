class UserModel{
  final String name;
  final String email;
  final String password;

  UserModel(this.name,{
   required this.email,
   required this.password,
});

  @override
  bool operator ==(Object other) {
    return (other is UserModel && email == other.email && password == other.password);
  }
}