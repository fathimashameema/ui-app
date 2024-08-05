import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  List<Image> images = [
    Image.asset('lib/asset/images/top.jpg'),
    Image.asset('lib/asset/images/shoe.jpg'),
    Image.asset('lib/asset/images/hoodie.jpg'),
    Image.asset('lib/asset/images/coat.jpg'),
    Image.asset('lib/asset/images/chanel.webp'),
    Image.asset('lib/asset/images/chain.webp'),
    Image.asset('lib/asset/images/oldmoney.jpg'),
    Image.asset('lib/asset/images/tshirt.jpg'),
  ];

  List<String> prices = [
    '₹799',
    '₹500',
    '₹1059',
    '₹1099',
    '₹899',
    '₹900',
    '₹699',
    '₹1000',
  ];

  List<String> orders = [
    'Order#192837',
    'Order#132893',
    'Order#127834',
    'Order#174833',
    'Order#192309',
    'Order#123487',
    'Order#112908',
    'Order#187903',
  ];

  List<String> dates = [
    'jul 12 12:10 PM',
    'jul 13 6:09 PM',
    'jul 13 2:47 Am',
    'jul 14 1:19 PM',
    'jul 15 3:02 AM',
    'jul 16 9:39 PM',
    'jul 17 11:39 AM',
    'jul 17 4:27 AM',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 49, 89, 121),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Payments ',
            style: GoogleFonts.abel(
                color: Color.fromARGB(255, 242, 238, 238),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Transaction Limit',
                            style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )),
                        Text(
                          'A free limit up to which you will receive the online payments directly in you bank.',
                          style: GoogleFonts.ubuntu(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 114, 114, 114),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: LinearProgressIndicator(
                            value: 0.26664,
                            backgroundColor: Color.fromARGB(255, 193, 191, 191),
                            minHeight: 5,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Text(
                          '36,668 left out of ₹50,000 ',
                          style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            color: Color.fromARGB(255, 167, 165, 165),
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 19, 86, 140),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Increase Limit',
                              style: GoogleFonts.ubuntu(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Default Method',
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Online Payments',
                              style: GoogleFonts.ubuntu(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Profile',
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Bank Account',
                              style: GoogleFonts.ubuntu(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
                ),
                Divider(),
                Container(
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Overview',
                        style: GoogleFonts.ubuntu(
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Life Time',
                            style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Icon(Icons.arrow_drop_down_outlined),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 205, 124, 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT ON HOLD',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '₹0',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 56, 122, 58),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT RECEIVED ',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '₹13,332',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transactions',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 110,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 170, 170),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'On Hold',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 111, 111, 111)),
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 19, 86, 140),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Payouts(15)',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 251, 250, 250)),
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 170, 170),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Refund',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 111, 111, 111)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child: ClipRRect(
                                          child: images[index],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            orders[index],
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            dates[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    prices[index],
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.blue),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.green),
                                      ),
                                      const Text(
                                        '  Successful',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '${prices[index]} deposited to 1364134721',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: images.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
