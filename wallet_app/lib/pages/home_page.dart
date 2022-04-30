// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/my_button.dart';
import 'package:wallet_app/utils/my_card.dart';
import 'package:wallet_app/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// PageController
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "My",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Cards",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),

          //Cards
          Container(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                MyCard(
                  balance: 4.240,
                  cardNumber: 111122223333,
                  expiryMonth: 10,
                  expiryYear: 2024,
                  color: Colors.deepPurple,
                ),
                MyCard(
                  balance: 4.240,
                  cardNumber: 111122223333,
                  expiryMonth: 10,
                  expiryYear: 2024,
                  color: Colors.blueAccent,
                ),
                MyCard(
                  balance: 4.240,
                  cardNumber: 111122223333,
                  expiryMonth: 10,
                  expiryYear: 2024,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
          ),
          const SizedBox(height: 25),


          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              MyButton(iconPath: 'lib/assets/send.png', btnText: "Send"),
              MyButton(iconPath: 'lib/assets/credit-card.png', btnText: "Pay"),
              MyButton(iconPath: 'lib/assets/bill.png', btnText: "Bills"),
            ],
          ),
          const SizedBox(height: 25),

          //List tile items
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: const [
                MyListTile(
                  iconName: 'lib/assets/analysis.png',
                  tileName: 'Statistics',
                  titleSubtitle: 'Payment and Income',
                ),
                MyListTile(
                  iconName: 'lib/assets/money-bag.png',
                  tileName: 'Transactions',
                  titleSubtitle: 'Transaction History',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
