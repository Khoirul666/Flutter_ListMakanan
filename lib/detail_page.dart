import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  final detail =
      "Pecel aljslajlsdnncas ascnasnca scnasnclasc aslc askcla c ascaklsca scakslcnkal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Image.asset("assets/bubur.jpg", scale: 0.5),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      // const FavouriteButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              "BUBUR",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    const Icon(
                      Icons.access_time_filled,
                      color: Color.fromARGB(255, 255, 230, 0),
                    ),
                    const SizedBox(height: 8),
                    Text("waktubuka"),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.local_fire_department, color: Colors.red),
                    const SizedBox(height: 8),
                    Text("kalori"),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.monetization_on, color: Colors.green),
                    const SizedBox(height: 8),
                    Text("harga"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              detail,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 150, child: ListView()),
        ],
      ),
    );
  }
}
