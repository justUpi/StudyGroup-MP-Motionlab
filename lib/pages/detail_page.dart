import 'package:flutter/material.dart';
import 'package:shop_ui/pages/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Ink(
                      child: const Icon(
                        Icons.chevron_left,
                        size: 33,
                      ),
                    ),
                  ),
                  const Text(
                    "Product Detail",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.favorite,
                    size: 33,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset(
                          "assets/images/watch.png",
                          width: double.infinity,
                          height: 401,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Mi Band 8 Pro",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "\$54.00",
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 20.0, color: Color(0xFF00623B)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 17.0, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0XFF00623B)),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          width: double.infinity,
                          child: const Center(
                            child: Text(
                              "Add To Bag",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
