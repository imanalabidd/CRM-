class Team {
  late final int id;
  late final String first_name;
  late final String email;
  late final String phone;

  Team({
    required this.id,
    required this.first_name,
    required this.email,
    required this.phone,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'] as int,
      first_name: json['first_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone']as String? ?? '',
    );
  }
}
