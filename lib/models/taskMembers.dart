
class Memebers{
    late final String id;
    late final String name;
    late final String date;
    late final String status;

  Memebers({
  required this.id,
  required this.name,
  required this.date,
  required this.status,
});
factory Memebers.fromJson(Map<String, dynamic> json){
  return Memebers(name: json['name'], date: json['date'], status: json['status'], id:json['status']);

}
Map<String, dynamic> toJson(){
  return{
    'name': name, 'date':date,'status':status,'id':id
  };
}
}
