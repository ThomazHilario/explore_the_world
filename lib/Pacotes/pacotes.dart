import 'package:flutter/material.dart';

class Pacotes extends StatelessWidget {
  // Constructor
  const Pacotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pacotes'),
      ),
      body: Center(
        child: Column(
          children: <Container>[
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('images/londres.jpg', fit: BoxFit.cover, height:150, width:MediaQuery.of(context).size.width,)
                  ),

                  const Row(
                    children: [
                      Text('Pacote de viagem para Londres', textAlign: TextAlign.right, style: TextStyle(fontSize: 20),)
                    ],
                  ),

                  const Row(
                    children: [
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),

                        child: const Row(
                          children: [
                            Icon(Icons.food_bank_outlined),
                            Icon(Icons.hotel),
                            Icon(Icons.airplane_ticket)
                          ],
                        ),
                      ),

                      const Text("12x de 3000", style: TextStyle(
                        fontSize: 25
                      ),)
                    ],
                  )
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('images/odaiba.jpg', fit: BoxFit.cover, height:150, width:MediaQuery.of(context).size.width,)
                  ),

                  const Row(
                    children: [
                      Text('Pacote de viagem para Odaiba', textAlign: TextAlign.right, style: TextStyle(fontSize: 20),)
                    ],
                  ),

                  const Row(
                    children: [
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                      Icon(Icons.star_rate, color: Color.fromRGBO(249, 232, 43, 1)),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),

                        child: const Row(
                          children: [
                            Icon(Icons.food_bank_outlined),
                            Icon(Icons.hotel),
                            Icon(Icons.airplane_ticket)
                          ],
                        ),
                      ),

                      const Text("12x de 3000",style: TextStyle(
                        fontSize: 25
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
