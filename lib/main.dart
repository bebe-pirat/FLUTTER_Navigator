import 'package:flutter/material.dart';
import 'package:flutter_nav/task_2.dart';
import 'package:flutter_nav/task_3.dart';
import 'task_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationMethodsScreen(),
    );
  }
}

class NavigationMethodsScreen extends StatelessWidget {
  NavigationMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Навигация во Flutter'),
      ),
      body: 
      Center(
        child:
       Column(
          children: [
             Text(
              'Выберите способ навигации:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hallway()),
                );
              },
              child: Text("Часть 1: Самый простой способ - прямой переход"),
            ),
            
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NamedRoutesFlow()),
                );
              },
              child: Text("Часть 2: Named Routes - централизованное управление"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoRouterFlow()),
                );
              },
              child: Text("Часть 3: GoRouter - продвинутая навигация"),
            ),
          ],
        ),
      ),
      );
  }
}