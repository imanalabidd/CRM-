class Task {
  late final String title;
  late final String start_date;
  late final String deadline;
  late final int id;
  late final String status;
  late final String description;
  late final String milestone_id;
  late final String priority_id;
  late final String project_id;
  late final String assigned_to;
  late final String collaborators;



  Task( {required this.title, 
  required this.start_date, 
  required this.deadline,
  required this.id,
  required this.status,
  required this.description,
  required this.milestone_id,
  required this.priority_id,
  required this.project_id,
  required this.assigned_to,
  required this.collaborators,


  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      deadline: json['deadline'],
      status: json['status'],
      description: json['description'],
      milestone_id: json['milestone_id'],
      priority_id: json['priority_id'],
      start_date: json['start_date'],
      project_id: json['project_id'],
      assigned_to: json['assigned_to'],
      collaborators: json['collaborators'],

      


    );
  }

  Map<String, dynamic> toJson() {
    return
    {'id': id, 'title':title,'deadline':deadline,
    'status': status ,'description':description,'milestone_id':milestone_id,
    'priority_id': priority_id, 'start_date':start_date,
    'project_id':project_id,'assigned_to':assigned_to,
    'collaborators':collaborators,
    };
}
  } 
