import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ui/controller/home_controller.dart';
import 'package:shop_ui/pages/cart_page.dart';
import 'package:shop_ui/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 23.0,
                  ),
                  onPressed: () {
                    print("I was tapped");
                  },
                ),
                Image.asset(
                  "assets/images/iconShop.png",
                  width: 47,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 23.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartPage()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 30.0),
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
            const SizedBox(height: 20.0),
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
            const SizedBox(height: 25.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryItem(
                      'All', Colors.green.shade900, Colors.white),
                  _buildCategoryItem(
                      'Watch', Colors.grey.shade200, Colors.black),
                  _buildCategoryItem(
                      'Shirt', Colors.grey.shade200, Colors.black),
                  _buildCategoryItem(
                      'Shoes', Colors.grey.shade200, Colors.black),
                  _buildCategoryItem(
                      'Headphone', Colors.grey.shade200, Colors.black),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Our Best Seller",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
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
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String title, Color bgColor, Color textColor) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: textColor),
      ),
    );
  }
}
