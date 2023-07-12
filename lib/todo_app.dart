import 'package:my_flutter_apps/todo.dart';

//import './drawer.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../locator.dart';
import '../todo.adapter.dart';
import 'ui/todos_screen/todos_screen_view.dart';

class Todo_app extends StatelessWidget {
  const Todo_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodosScreenView(),
      theme: ThemeData.dark(),
      title: 'Flutter Stacked Todos',
       
    );
  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      drawer: const MyDrawer(),
//      appBar: AppBar(title: const Text("Todo Apps")),
//      body: const Center(child: Text("Todo Apps")),
//    );
//  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox('todos');
  
  //setupLocator();
  

 // runApp(const Todo_app());
}

