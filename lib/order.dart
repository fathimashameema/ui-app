import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 49, 89, 121),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Order#168537',
            style: GoogleFonts.abel(
                color: const Color.fromARGB(255, 242, 238, 238),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 10,
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Jul 18 , 05:10 AM',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 95, 89, 89)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 47, 99, 144),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      'Delivered',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 ITEM',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.receipt,
                      color: Color.fromARGB(255, 67, 107, 175),
                      size: 20,
                    ),
                    Text(
                      'RECEIPT',
                      style: TextStyle(
                          color: Color.fromARGB(255, 67, 107, 175),
                          fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      child: Image.asset('lib/asset/images/tshirt.jpg'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Explore | Men | Beige',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 100, 93, 93)),
                    ),
                    const Text(
                      '1 peice',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const Text(
                      'Size : XL',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 188, 219, 245),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.blue),
                              ),
                              child: const Center(
                                  child: Text(
                                '1',
                                style: TextStyle(color: Colors.blue),
                              )),
                            ),
                            const Text(
                              '  x ₹1000',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 74, 69, 69),
                                  fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        const Text(
                          '  ₹1000',
                          style: TextStyle(
                              color: Color.fromARGB(255, 74, 69, 69),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item Total',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 62, 61, 61),
                  ),
                ),
                Text(
                  '₹1000',
                  style: TextStyle(
                      fontSize: 19, color: Color.fromARGB(255, 53, 51, 51)),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 62, 61, 61),
                  ),
                ),
                Text(
                  'FREE',
                  style: TextStyle(
                      fontSize: 19, color: Color.fromARGB(255, 68, 129, 70)),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 16, 16, 16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '₹1000',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 53, 51, 51),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CUSTOMER DETAILS',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 61, 103, 137),
                      size: 20,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 61, 103, 137),
                      ),
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 54, 52, 52),
                        ),
                      ),
                      Text(
                        '+91-9388231772',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 96, 96, 96),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 25,
                        color: Color.fromARGB(255, 61, 103, 137),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 25,
                        color: Color.fromARGB(255, 80, 138, 82),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Text(
              'Address',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 54, 52, 52),
              ),
            ),
            const Text(
              'D 1101 Chartered Beverly',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 49, 48, 48),
              ),
            ),
            const Text(
              'Hills Subramanyapura P.O',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 49, 48, 48),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 54, 52, 52),
                        ),
                      ),
                      Text(
                        'Bangalore',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 49, 48, 48),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pincode',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 54, 52, 52),
                        ),
                      ),
                      Text(
                        '560061',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 49, 48, 48),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 54, 52, 52),
                      ),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 49, 48, 48),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 20,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 168, 240, 171),
                      border: Border.all(
                        color: const Color.fromARGB(255, 64, 120, 66),
                      ),
                      borderRadius: BorderRadius.circular(4)),
                  child: const Text(
                    ' PAID',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 64, 120, 66),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const Divider(),
            const Text(
              'ADDITIONAL INFORMATION',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'State',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 54, 52, 52),
                    ),
                  ),
                  Text(
                    'Karnataka',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 49, 48, 48),
                    ),
                  )
                ],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 54, 52, 52),
                  ),
                ),
                Text(
                  'greeniceaqua@gmail.com',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 49, 48, 48),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(
                      color: Color.fromARGB(255, 26, 95, 151),
                      width: 2,
                    )),
                child: const Center(
                  child: Text(
                    'Share receipt',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
