import 'package:flutter/material.dart';

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
      },
    );
  }
}

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
              onTap: () {},
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
              onTap: () {},
            )
          ],
        ),
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bem vindo a Explore the world'),
              Text(
                'Somos a maior plataforma de pacotes de viagens para ajudar a voce a escolher um destino',
              ),
            ]),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Destinos extends StatelessWidget {
  // Constructor
  const Destinos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to Home Page'),
        ),
      ),
    );
  }
}

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contato')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <ListTile>[
            ListTile(
              title: Column(children:<Widget>[
                Icon(Icons.phone_android, size: 60),
                Text('Telefone', style: TextStyle(fontSize: 24)),
                Text('(85) 90808-0808', style: TextStyle(fontSize: 12),),
              ]),
            ),

            ListTile(
              title: Column(children:<Widget>[
                Icon(Icons.email, size: 60),
                Text('Email', style: TextStyle(fontSize: 24)),
                Text('exploretheworld@email.com', style: TextStyle(fontSize: 12),),
              ]),
            ),

            ListTile(
              title: Column(children:<Widget>[
                Icon(Icons.message, size: 60),
                Text('Whatssap', style: TextStyle(fontSize: 24)),
                Text('(85) 90808-0808', style: TextStyle(fontSize: 12),),
              ]),
            ),
          
          ]
        )
      ),
    );
  }
}
