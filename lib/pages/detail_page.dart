import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left,
                        size: 30.0,
                      ),
                    ),
                    const Text(
                      'Product Detail',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 30.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  'assets/images/image-band.png',
                ),
                SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Mi Band 8 Pro',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                const Text(
                  '\$ 54.00',
                  style: TextStyle(fontSize: 20.0, color: Color(0xFF00623B)),
                ),
                SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    print('I was tapped');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF00623B),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
