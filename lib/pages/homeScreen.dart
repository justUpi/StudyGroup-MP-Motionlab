import 'package:flutter/material.dart';
import 'package:motion_week_2/pages/detail_page.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Our way of loving",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "you back",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(7),
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300]),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.all(6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF00623B),
                        ),
                        child: Text(
                          'All',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.symmetric(vertical: 6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Text(
                          'Watch',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF4D4D4D)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.all(6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Text(
                          'Shirt',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF4D4D4D)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.all(6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Text(
                          'Shoe',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF4D4D4D)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.all(6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Text(
                          'Pants',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF4D4D4D)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.all(6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Text(
                          'T-Shirt',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF4D4D4D)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.all(6.0),
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Text(
                          'Belt',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF4D4D4D)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Our Best Seller',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 0.0,
              ),
              SizedBox(
                height: 450.0,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.0,
                    crossAxisSpacing: 15.0,
                    childAspectRatio: 0.7,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        ),
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                offset: Offset(1, 1),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/image-band.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mi Band 8 Pro'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ 54.00',
                                          style: TextStyle(
                                            color: Color(0xFF00623B),
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        ),
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                offset: Offset(1, 1),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/shirt.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lycra Men\’s shirt'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ 12.00',
                                          style: TextStyle(
                                            color: Color(0xFF00623B),
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.grey,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        ),
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                offset: Offset(1, 1),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/earphone.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Siberia 800'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ 45.00',
                                          style: TextStyle(
                                            color: Color(0xFF00623B),
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.grey,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        ),
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                offset: Offset(1, 1),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/shoes.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Strawberry Frappuccino'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$ 35.00',
                                          style: TextStyle(
                                            color: Color(0xFF00623B),
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.grey,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
