import 'package:flutter/material.dart';
import 'package:reward_ui/RedeemPoints.dart';


class RewardPoints extends StatefulWidget {
  const RewardPoints({super.key});
  @override
  State<RewardPoints> createState() => _RewardPointsState();
}

class _RewardPointsState extends State<RewardPoints> {
  int numberOfCards=5;
  int currentPoints=1000;
  List<String> cardNames=['FlipKart','Amazon','Myntra','Ajio','Meesho'];
  List<String> cardLogos=[
    'assets/logos/Flipcart_Logo.jpeg',
    'assets/logos/Amazon_Logo.jpeg',
    'assets/logos/Myntra_logo.png',
    'assets/logos/Ajio_Logo.png',
    'assets/logos/Meesho_Logo.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reward Points'),
        leading:Icon(Icons.person),
      ),


      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 135, 4, 4),
              Color.fromARGB(255, 6, 0, 0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(80.0),
              child: Center(
                child: Text(
                  'Reward Points: $currentPoints',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5, // Number of cards you want in the list
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 200,
                              width: 600,
                              child: Card(
                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    ListTile(
                                      title: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        cardLogos[index % cardLogos.length],
                                                        height: 120,
                                                        width: 100,
                                                      ),
                                                      SizedBox(width: 30),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            '      Gift Card Valued at Rs 500 or 30% off at ${cardNames[index % cardNames.length]}',
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Expire Date',
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  Text(
                                                    '30 March 2024',
                                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20), // Adjust spacing as needed
                                        ],
                                      ),
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReedemPoints(name: cardNames[index])));
                                      },
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      right: 25,
                                      child: Container(
                                        width: 80,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [Colors.purple, Colors.blue], // Gradient colors from purple to blue
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                          borderRadius: BorderRadius.circular(20), // Makes the container round
                                        ),
                                        child: Center(
                                          child: Text(
                                            '500',
                                            style: TextStyle(
                                              color: Colors.white, // Example text color, you can change it as needed
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

// SizedBox(
// height: 200,
// width: 600,
// child: Card(
// color: Colors.white,
// child: Stack(
// children: [
// ListTile(
// title: Row(
// children: [
// Align(
// alignment: Alignment.topLeft,
// child: Padding(
// padding: const EdgeInsets.all(2.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Image.asset(
// cardLogos[index % cardLogos.length],
// height: 120,
// width: 100,
// ),
// SizedBox(width: 30),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// '      Gift Card Valued at Rs 500 or 30% off at ${cardNames[index % cardNames.length]}',
// ),
// ],
// ),
// ],
// ),
// Text(
// 'Expire Date',
// style: TextStyle(fontSize: 12),
// ),
// Text(
// '30 March 2024',
// style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// ),
// ],
// ),
// ),
// ),
// SizedBox(width: 20), // Adjust spacing as needed
// ],
// ),
// onTap: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => RedeemPoints(f)));
// },
// ),
// Positioned(
// bottom: 20,
// right: 25,
// child: Container(
// width: 80,
// height: 30,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [Colors.purple, Colors.blue], // Gradient colors from purple to blue
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// ),
// borderRadius: BorderRadius.circular(20), // Makes the container round
// ),
// child: Center(
// child: Text(
// '500',
// style: TextStyle(
// color: Colors.white, // Example text color, you can change it as needed
// ),
// ),
// ),
// ),
// ),
//
// ],
// ),
// ),
//
// )