import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre nos'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const Text('Quem somos nos ?', style: TextStyle(
              fontSize: 30
            )),

            const Text('Somos a maior agência de viagens do mundo. Oferecemos ofertas que cabem no seu bolso em até 24x sem juros.', textAlign: TextAlign.justify),
            
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Column(      
                  children: <Widget>[         
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          child: const Text('Destino'),
                          onPressed: (){
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/destinos');
                          },
                        ),
                      )
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          child: const Text('Pacotes'),
                          onPressed: (){
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/pacotes');
                          },
                        ),
                      )
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width:300,
                        child: ElevatedButton(
                          child: const Text('Contatos'),
                          onPressed: (){
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/contatos');
                          },
                        ),
                      )
                    )
                  ],
                ),
              ), 
            )
          ],
        ),
      ),
    );
  }
}
