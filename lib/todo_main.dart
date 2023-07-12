import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './drawer.dart';
import '../locator.dart';
import '../todo.adapter.dart';
import 'ui/todos_screen/todos_screen_view.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(title: const Text("About")),
      body: const Center(child: Text("About")),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox('todos');
  
  setupLocator();
  
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodosScreenView(),
      theme: ThemeData.dark(),
      title: 'Flutter Stacked Todos',
       
    );
  }
}