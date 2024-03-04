// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 final List<Pub> pubs = [
    Pub(
      name: 'Barcelona',
      picture: '',
      avgPrice: '15-20', 
    ),
    Pub(
      name: 'BestBuy',
      picture: '',
      avgPrice: '7-20',
    ),
    Pub(
      name: 'Spain Grill House',
      picture: '', 
      avgPrice: '15',
    ),
    Pub(
      name: 'Curacao',
      picture: '', 
      avgPrice: '24', 
    ),
  ];

    MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 67, 144, 0),
          title: Text(
            'Everis Fridays Pub',
          ), 
        ),
        body: ListView.builder(
          itemCount: pubs.length, 
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.network(
                      pubs[index].picture,
                      width: 100, 
                      height: 100, 
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 16, 
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          pubs[index].name, 
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold, 
                          ),
                        ),
                        Text(
                          'Avg Price: ${pubs[index].avgPrice}', 
                          style: TextStyle(
                            fontSize: 16, 
                            color: Colors.grey, 
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


class Pub {
  final String name;
  final String avgPrice;
  final String picture;

  const Pub({
    required this.name,
    required this.avgPrice,
    required this.picture,
  });
}




