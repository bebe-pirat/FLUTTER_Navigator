import 'package:flutter/material.dart';
import 'package:flutter_nav/main.dart';
import 'package:go_router/go_router.dart';

class GoRouterFlow extends StatelessWidget {
  GoRouterFlow({super.key});

  final GoRouter router = GoRouter(
    initialLocation: '/hallway', 
    routes: [
      GoRoute(
        path: '/hallway',
        builder: (context, state) => const GoRouterHallway(),
      ),
      GoRoute(
        path: '/kitchen',
        builder: (context, state) => const GoRouterKitchen(),
      ),
      GoRoute(
        path: '/bedroom',
        builder: (context, state) => const GoRouterBedroom(),
      ),
      GoRoute(
        path: '/',
        builder:(context, state) => const MainApp(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class GoRouterHallway extends StatelessWidget {
  const GoRouterHallway({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.push('/kitchen'),
              child: const Text('Кухня'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => context.go('/bedroom'),
              child: const Text('Спальня'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Выйти из квартиры'),
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

class GoRouterKitchen extends StatelessWidget {
  const GoRouterKitchen({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.push('/hallway'),
              child: const Text('Коридор'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => context.go('/bedroom'),
              child: const Text('Спальня'),
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

class GoRouterBedroom extends StatelessWidget {
  const GoRouterBedroom({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.push('/hallway'),
              child: const Text('Коридор'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => context.go('/kitchen'),
              child: const Text('Кухня'),
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