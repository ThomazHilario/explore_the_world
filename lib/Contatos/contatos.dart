import 'package:flutter/material.dart';

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
