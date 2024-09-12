import 'package:explore_the_world/Pacotes/pacotes.dart';
import 'package:flutter/material.dart';

// page sobre
import 'package:explore_the_world/Sobre/sobre.dart';

// Page Destinos
import 'package:explore_the_world/Destinos/destinos.dart';

// page contatos
import 'package:explore_the_world/Contatos/contatos.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Explore the world'),
        '/destinos': (context) => const Destinos(),
        '/contatos': (context) => const Contatos(),
        '/sobre': (context) => const Sobre(),
        '/pacotes': (context) => const Pacotes(),
      },
    );
  }
}

// Home Page
class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <ListTile>[
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Destinos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/destinos');
              },
            ),
            ListTile(
              leading: const Icon(Icons.airplane_ticket),
              title: const Text('Pacotes de viagem'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pacotes');
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text('Contatos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contatos');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Sobre nos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/sobre');
              },
            )
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/HomePageImage.jpg'),
                fit: BoxFit.cover)),
        child: SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(138, 104, 68, 223),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/destinos');
              },
              child: const Text(
                'Explorar destinos ',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              )),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}