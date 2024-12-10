import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 23,
                ),
                Image.asset(
                  "assets/images/iconShop.png",
                  width: 47,
                ),
                const Icon(
                  Icons.shopping_bag_outlined,
                  size: 23,
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'Our way of loving',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'you back',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintStyle:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w200),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: const EdgeInsets.all(10),
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green.shade900,
                    ),
                    child: const Text(
                      'All',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: const EdgeInsets.all(10),
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: const Text(
                      'Watch',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: const EdgeInsets.all(10),
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: const Text(
                      'Shirt',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: const EdgeInsets.all(10),
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: const Text(
                      'Shoes',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: const Text(
                      'Headpone',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Our Best Seller",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 450,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.7,
                  ),
                  scrollDirection: Axis.vertical,
                  children: const [
                    Customcard(
                      linkAsset: "assets/images/watch.png",
                      nameProduct: "Mi Band 8 Pro",
                      priceProduct: "\$54.00",
                    ),
                    Customcard(
                      linkAsset: "assets/images/shirt.png",
                      nameProduct: "Lycra Men's Shirt",
                      priceProduct: "\$12.00",
                    ),
                    Customcard(
                      linkAsset: "assets/images/headphone.png",
                      nameProduct: "Siberia 800",
                      priceProduct: "\$45.00",
                    ),
                    Customcard(
                      linkAsset: "assets/images/shoes.png",
                      nameProduct: "Strawberry Frappucino",
                      priceProduct: "\$35.00",
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
    const Text(
      'Wallet Page',
      style: optionStyle,
    ),
    const Text(
      'Favorite Page',
      style: optionStyle,
    ),
    const Text(
      'Notification Page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notification',
          )
        ],
        backgroundColor: const Color(0xFF00623B),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        onTap: _onItemTapped,
      ),
    );
  }
}
