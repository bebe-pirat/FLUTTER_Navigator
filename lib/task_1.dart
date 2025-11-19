import 'package:flutter/material.dart';

class Hallway extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
                elevation: 10,
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kitchen()));
              },
              child: Text(
                'Кухня',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, 
                foregroundColor: Colors.white, 
                elevation: 10,
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bedroom()));
              },
              child: Text(
                'Спальня',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                while (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: Text('Выйти из квартиры'),
            ),
          ],
        ),
        backgroundColor: Colors.green[700],
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

class Bedroom extends StatelessWidget {
  const Bedroom();

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, 
                foregroundColor: Colors.white, 
                elevation: 10,
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kitchen()));
              },
              child: Text(
                'Кухня',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, 
                foregroundColor: Colors.white, 
                elevation: 10,
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hallway()));
              },
              child: Text(
                'Коридор',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green[700],
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

class Kitchen extends StatelessWidget {
  const Kitchen();

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, 
                foregroundColor: Colors.white, 
                elevation: 10,
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hallway()));
              },
              child: Text(
                'Коридор',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, 
                foregroundColor: Colors.white, 
                elevation: 10,
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bedroom()));
              },
              child: Text(
                'Спальня',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green[700],
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