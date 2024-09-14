import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 132, 235),
        titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text
            ('menu Lateral',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Pagina Inicial'),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              }
            )
          ]
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: Text('Ir para o formulário'),
            ),
          ],
        ),
      ),
    );
  }
}