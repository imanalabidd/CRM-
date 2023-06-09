class Details{
  late final int id;
  late final int project_id;
  late final String user_id;
  late final String is_leader;
  late final String deleted;



  Details({
    required this.project_id,
    required this.deleted,
    required this.id,
    required this.is_leader,
    required this.user_id,

  });
   factory Details.fromJson(Map<String, dynamic> json) {
  return Details(
    id: json['id'] ?? 0, // Provide a default value in case the value is null
    project_id: json['project_id'] ?? '',
    user_id: json['user_id'] ?? '',
    is_leader: json['is_leader'] ?? '',
    deleted: json['deleted'] ?? '',
  );
}


  Map<String, dynamic> toJson() {
    return {
      'id': id as String? ??'',
      'deleted': deleted as String? ?? '',
      'is_leader': is_leader as String? ?? '',
      'user_id': user_id as String? ?? '',
      'project_id': project_id as String? ?? '',
    };
  }
}