import 'package:flutter/material.dart';
import 'package:shop_ui/pages/detail_page.dart';

class Customcard extends StatefulWidget {
  final String linkAsset;
  final String nameProduct;
  final String priceProduct;
  const Customcard(
      {super.key,
      required this.linkAsset,
      required this.nameProduct,
      required this.priceProduct});

  @override
  State<Customcard> createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailPage()));
      },
      child: Ink(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
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
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              child: Image.asset(
                widget.linkAsset,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameProduct,
                      style: const TextStyle(fontSize: 13.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.priceProduct,
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.green[900],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLike = !isLike;
                            });
                          },
                          child: Icon(
                              isLike ? Icons.favorite_border : Icons.favorite,
                              color: isLike ? Colors.grey : Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
