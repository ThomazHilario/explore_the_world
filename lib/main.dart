import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
              onTap: () {},
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

// Destinos Page
class Destinos extends StatelessWidget {
  // Constructor
  const Destinos({super.key});

  @override
  Widget build(BuildContext context) {
    // Mostar detalhes
    mostrarDetalhes(String url, String titleDestino, String sobre) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>
                DetalhesDestinosPage(url: url,sobre: sobre,titleDestino: titleDestino,),
          ));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Destinos')),
      body: ListView(children: <ListTile>[
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('images/londres.jpg'),
          ),
          title: const Text('Londres'),
          onTap: () => mostrarDetalhes('images/londres.jpg', 'Londres',
              'Londres, capital da Inglaterra e do Reino Unido, é uma cidade do século 21 com uma história que remonta à era romana. Seu centro abriga as sedes imponentes do Parlamento, a famosa torre do relógio do Big Ben e a Abadia de Westminster, local de coroação dos monarcas britânicos. Do outro lado do rio Tâmisa, a roda gigante London Eye tem vista panorâmica do complexo cultural da margem sul e de toda a cidade.'),
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('images/odaiba.jpg'),
          ),
          title: const Text('Odaiba'),
          onTap: () => mostrarDetalhes('images/odaiba.jpg', 'Odaiba',
              'Acessado pela Rainbow Bridge ou pelo trem Yurikamome futurista, Odaiba é um centro de entretenimento de alta tecnologia em uma ilha artificial na Baía de Tóquio. Os visitantes vão até a praia no Parque Seaside, aproveitam as vistas do Monte Fuji pela Roda-gigante Daikanransha e interagem com robôs no museu de ciências Miraikan. Os shopping centers incluem o Aqua City e o VenusFort, com temática de Veneza, e há bares de sushi com vista para a orla.'),
        )
      ]),
    );
  }
}

// Contatos Page
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
              title: Column(children: <Widget>[
                Icon(Icons.phone_android, size: 60),
                Text('Telefone', style: TextStyle(fontSize: 24)),
                Text(
                  '(85) 90808-0808',
                  style: TextStyle(fontSize: 12),
                ),
              ]),
            ),
            ListTile(
              title: Column(children: <Widget>[
                Icon(Icons.email, size: 60),
                Text('Email', style: TextStyle(fontSize: 24)),
                Text(
                  'exploretheworld@email.com',
                  style: TextStyle(fontSize: 12),
                ),
              ]),
            ),
            ListTile(
              title: Column(children: <Widget>[
                Icon(Icons.message, size: 60),
                Text('Whatssap', style: TextStyle(fontSize: 24)),
                Text(
                  '(85) 90808-0808',
                  style: TextStyle(fontSize: 12),
                ),
              ]),
            ),
          ])),
    );
  }
}

class DetalhesDestinosPage extends StatelessWidget {
  final String url;
  final String titleDestino;
  final String sobre;

  const DetalhesDestinosPage(
      {super.key,
      required this.url,
      required this.titleDestino,
      required this.sobre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleDestino),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(url, fit: BoxFit.cover, height:250),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, size: 30),
                      Text('Call')
                    ],
                  ),
                  
                  Column(
                    children: [
                      Icon(Icons.gps_fixed, size: 30),
                      Text('Route')
                    ],
                  ),

                  Column(
                    children:[
                      Icon(Icons.share, size: 30),
                      Text('Share')
                    ]
                  )
                ],
              ),
            ),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(sobre, textAlign: TextAlign.justify),
            )
          ],
        ),
        
      ),
    );
  }
}
