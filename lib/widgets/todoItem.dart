import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodoapp/constants/colors.dart';
import 'package:mytodoapp/models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDeletedItem;

  TodoItem({Key? key, required this.todo, required this.onTodoChanged,
  required this.onDeletedItem}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onTodoChanged(todo);
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(todo.isDone ? Icons.check_box : Icons.check_box_outline_blank, color: tdBlue,),
          title: Text(todo.todoText!, style: TextStyle(fontSize: 16, color: tdBlack,
          decoration: todo.isDone ? TextDecoration.lineThrough : null),),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(onPressed: () { onDeletedItem(todo.id); }, icon: const Icon(Icons.delete), iconSize: 18,
            color: Colors.white),
          ),
        ),
    );
  }
}