import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ui/controller/cart_controller.dart';
import 'package:shop_ui/pages/home_page.dart';
import 'package:shop_ui/pages/invoice_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Icon(Icons.chevron_left, size: 33),
        ),
        leadingWidth: 31,
        title: const Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          CartItemCard(
            image: "assets/images/watch.png",
            title: "Mi Band 8 Pro - Brand New",
            price: "\$54.00",
          ),
          CartItemCard(
            image: "assets/images/shirt.png",
            title: "Lycra Men's Shirt",
            price: "\$12.00",
          ),
          CartItemCard(
            image: "assets/images/shoes.png",
            title: "Running Shoes",
            price: "\$75.00",
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade900,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: () {
            // Arahkan ke halaman InvoicePage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InvoicePage()),
            );
          },
          child: const Text(
            "Buy Now",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const CartItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    // Tag unik untuk setiap controller di setiap item
    final String tag = UniqueKey().toString();
    final cartController = Get.put(CartController(), tag: tag);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Gambar Produk
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),

          // Detail Produk (Nama & Harga)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Tombol Increment/Decrement

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: cartController.quantityDecerment,
                  icon: const Icon(Icons.remove, size: 20, color: Colors.green),
                ),
                Obx(
                  () => Text(
                    "${cartController.quantity.value}",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: cartController.quantityIncerment,
                  icon: const Icon(Icons.add, size: 20, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
