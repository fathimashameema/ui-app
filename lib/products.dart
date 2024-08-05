import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<bool> switchStates = List.generate(7, (index) => false);

  List<Image> images = [
    Image.asset('lib/asset/images/bag.webp'),
    Image.asset('lib/asset/images/glass.webp'),
    Image.asset('lib/asset/images/tie.jpg'),
    Image.asset('lib/asset/images/costume.jpg'),
    Image.asset('lib/asset/images/faceroller.webp'),
    Image.asset('lib/asset/images/watch.webp'),
    Image.asset('lib/asset/images/ring.jpg'),
  ];

  List<String> titles = [
    'LOUIS VUITTON|Wearable..',
    'LV Sunset Square...',
    'Silk Tie:Burgundy..',
    'OLD MONEY|Beige shirt... ',
    'NYKA|Face roller...',
    'Best Mens Luxury ...',
    "Men's Silver Ring...",
  ];

  List<String> prices = [
    '₹19,000',
    '₹12,000',
    '₹3490',
    '₹2,500',
    '₹600',
    '₹9,000',
    '₹10,000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      body: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 8),
              child: Card(
                color: Colors.white,
                shadowColor: const Color.fromARGB(255, 196, 195, 195),
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 208, 207, 207)),
                                      borderRadius: BorderRadius.circular(5)),
                                  height: 70,
                                  width: 70,
                                  child: ClipRRect(
                                    child: images[index],
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    titles[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                            255, 42, 41, 41)),
                                  ),
                                  Text(
                                    '1 Peice',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                            255, 109, 108, 108)),
                                  ),
                                  Text(
                                    prices[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'In stock',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 79, 159, 81),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.more_vert,
                                size: 20,
                                color: Color.fromARGB(255, 123, 122, 122),
                              ),
                              Transform.scale(
                                scale: 0.75,
                                child: Switch.adaptive(
                                  value: switchStates[index],
                                  onChanged: (value) {
                                    setState(() {
                                      switchStates[index] = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            size: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Share product',
                            style: TextStyle(
                              fontSize: 17,
                              color: const Color.fromARGB(255, 109, 108, 108),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
