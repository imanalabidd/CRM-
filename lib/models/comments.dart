class Comments{
   late final int id;
   late final String Created_by;
   late final String Created_at;
   late final String description;
   late final int Project_id;
   late final int Comment_id;
   late final int Task_id;
  
Comments({
 required this.id,
 required this.Comment_id,
 required this.Created_at,
 required this.Created_by,
 required this.Project_id,
 required this.Task_id,
 required this.description,
});

factory Comments.fromJson(Map<String ,dynamic> json){
  return Comments(
    id: json['id'],
    Comment_id: json['Comment_id'], 
    Created_at:json['Created_at'], 
    Created_by: json['Created_by'],
    Project_id: json['Project_id'],
    Task_id: json['Task_id'],
    description: json['description'],);
}
Map<String, dynamic>toJson(){
  return {
'id': id, 'Comment_id':Comment_id,'Created_at':Created_at,
'Created_by':Created_by,'Project_id':Project_id, 'Task_id':Task_id,
'description':description,
  };
}

}