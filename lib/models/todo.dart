class Todo {
  String? id;
  String? todoText;
  bool isDone;

  // Constructor
  Todo( {
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

 static List<Todo> todoList() {
   return [
     Todo(id: '1', todoText: 'Do homework', isDone: true),
     Todo(id: '2', todoText: 'Learning English', isDone: true),
     Todo(id: '3', todoText: 'Clean the house'),
     Todo(id: '4', todoText: 'Wash dishes'),
     Todo(id: '5', todoText: 'Go for a walk'),
     Todo(id: '6', todoText: 'Come to the graduation party', isDone: true),
   ];
 }
}