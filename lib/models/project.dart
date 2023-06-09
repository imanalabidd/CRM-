class Project{
  late final int id;
  late final String startdate;
  late final String deadline;
  late final String status;
  late final String title;


  Project({
    required this.startdate,
    required this.deadline,
    required this.id,
    required this.status,
    required this.title,

  });

 factory Project.fromJson(Map<String, dynamic> json) {
  return Project(
    id: json['id'] ?? 0, // Provide a default value in case the value is null
    deadline: json['deadline'] ?? '',
    status: json['status'] ?? '',
    title: json['title'] ?? '',
    startdate: json['startdate'] ?? '',
  );
}


  Map<String, dynamic> toJson() {
    return {
      'id': id as String,
      'deadline': deadline as String? ?? '',
      'status': status as String? ?? '',
      'title': title as String? ?? '',
      'startdate': startdate as String? ?? '',
    };
  }
}
