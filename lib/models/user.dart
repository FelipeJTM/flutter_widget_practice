class User {
  final String id;
  final String? avatar;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? role;

  User(this.id, this.avatar, this.firstName, this.lastName, this.email,
      this.role);

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        avatar = (json['avatar'] != null) ? json['avatar'] : "",
        firstName = (json['first_name'] != null) ? json['first_name'] : "",
        lastName = (json['last_name'] != null) ? json['last_name'] : "",
        email = (json['email'] != null) ? json['email'] : "",
        role = (json['role'] != null) ? json['role'] : "";
}
