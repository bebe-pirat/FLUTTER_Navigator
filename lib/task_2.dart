import 'package:flutter/material.dart';
import 'package:flutter_nav/main.dart';

class NamedRoutesFlow extends StatelessWidget {
  const NamedRoutesFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MainApp(),
        '/kitchen': (context) => const NamedKitchen(),
        '/bedroom': (context) => const NamedBedroom(),
        '/hallway': (context) => const NamedHallway(),
      },
      initialRoute: '/hallway',
    );
  }
}

class NamedHallway extends StatelessWidget {
  const NamedHallway({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () => Navigator.pushNamed(context, '/kitchen'),
              child: const Text('Кухня'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () => Navigator.pushNamed(context, '/bedroom'),
              child: Text(
                'Спальня',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              }, 
              child: Text("Выйти из квартиры"),
            ),
          ],
        ),
      ),
      body:
      Center(
        child: Text(
          'КОРИДОР',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
          ),
        )
      )
    );
  }
}

class NamedBedroom extends StatelessWidget {
  const NamedBedroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () => Navigator.pushNamed(context, '/kitchen'),
              child: const Text('Кухня'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () => Navigator.pushNamed(context, '/hallway'),
              child: Text(
                'Коридор',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body:
      Center(
        child: Text(
          'СПАЛЬНЯ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
          ),
        )
      )
    );
  }
}

class NamedKitchen extends StatelessWidget {
  const NamedKitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () => Navigator.pushNamed(context, '/bedroom'),
              child: const Text('Спальня'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () => Navigator.pushNamed(context, '/hallway'),
              child: Text(
                'Коридор',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body:
      Center(
        child: Text(
          'КУХНЯ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
          ),
        )
      )
    );
  }
}