class TodoModel {
  final int id;
  final String titile;
  final bool isChecked;

  TodoModel({
    required this.id,
    required this.titile,
    required this.isChecked,
  });

  factory TodoModel.fromJson(dynamic json) => TodoModel(
        id: json['id'],
        titile: json['title'],
        isChecked: json['completed'],
      );
}
