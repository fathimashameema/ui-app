import 'dart:core';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Dukaanpremium extends StatefulWidget {
  const Dukaanpremium({super.key});

  @override
  State<Dukaanpremium> createState() => _DukaanpremiumState();
}

class _DukaanpremiumState extends State<Dukaanpremium> {
  var isexpanded = false;
  List<IconData> icons = [
    Icons.language_outlined,
    Icons.verified_outlined,
    Icons.computer,
    Icons.headset_mic_outlined,
  ];

  List<String> titles = [
    'Costom Domain Name',
    'verified seller badge',
    'Dukaan for PC',
    'Priority support',
  ];

  List<String> subtitles = [
    'Get your own costom domain and build your brand on the internet',
    'Get green verified badge under your store name and build trust',
    'Access all the exclusive premium features on Dukaan for PC',
    'Get your questions resolved with our priority customer support',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                child: AppBar(
                  iconTheme: const IconThemeData(color: Colors.white),
                  backgroundColor: const Color.fromARGB(255, 49, 89, 121),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Dukaan Premium ',
                      style: GoogleFonts.abel(
                          color: const Color.fromARGB(255, 242, 238, 238),
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  centerTitle: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 75.0,
                  bottom: 540,
                  left: 20,
                  right: 20,
                ),
                child: Card(
                  child: cardelevated(),
                ),
              ),
              Positioned(
                top: 238,
                bottom: 20,
                left: 10,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Text(
                        'Features',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: 280,
                        child: ListView.builder(
                          itemCount: titles.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Color.fromARGB(255, 49, 89, 121),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  icons[index],
                                  size: 30,
                                  color: Color.fromARGB(255, 49, 89, 121),
                                ),
                              ),
                              title: Text(
                                titles[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                subtitles[index],
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 161, 160, 160)),
                              ),
                            );
                          },
                        ),
                      ),
                      Divider(),
                      Text(
                        'What is Dukaan Premium ? ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Stack(children: [
                        Card(
                            child: ClipRRect(
                                child: Image.asset('lib/asset/images/dukaan.png'))),
                        Positioned(
                            top: 75,
                            left: 150,
                            child: Icon(
                              FontAwesomeIcons.youtube,
                              color: Colors.red,
                              size: 50,
                            )),
                      ]),
                      Divider(),
                      Text(
                        'Frequently asked questions',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            faquesions(
                                question:
                                    'What type of busineses can use Dukaan premium ?',
                                answer:
                                    'Dukaan caters to a wide variety of sellers . be it a small grocery store o ra big legacy brand - anyone who want to sell their products/services online , dukaan is the best platform for now'),
                            faquesions(
                                question:
                                    'How constamizible i smy store in dukaan?',
                                answer:
                                    'Definitely! You have multiple options to customize your eCommerce store with Dukaan. We offer a Themes Marketplace where you can find themes tailored to your business. Moreover, you can dive into our Code Editor for ultimate flexibility, allowing you to customize anything and everything, from fonts to colors and various sections of the theme.'),
                            faquesions(
                                question:
                                    'What payment gateways are supported in dukaan ?',
                                answer:
                                    'Dukaan currently supports Cashfree, Razorpay, Paypal & Stripe, additionally new payment partners are already being onboarded onto Dukaan'),
                            faquesions(
                                question:
                                    'Can i manage my inventory on dukaan ?',
                                answer:
                                    'Yes, Dukaan does support inventory management, you can add warehouses and add inventory for your products at the warehouses, additionally Dukaan also provides options to connect leading warehouse / inventory management tools to sync your inventory'),
                            faquesions(
                                question:
                                    'Is there a transaction fee with the paid plans?',
                                answer:
                                    'Yes, the Starter, Growth, and Enterprise plans come with Dukaan service fees of 4.99%, 3.99%, and 1.99% respectively. Dukaan service fee is exclusive of all payment gateway charges'),
                          ],
                        ),
                      ),
                      Divider(),
                      Text(
                        'Need help ? Get in touch ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.messenger_outline,
                                    size: 30,
                                  ),
                                  Text(
                                    'Live Chat ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color:
                                          const Color.fromARGB(255, 95, 94, 94),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 30,
                                  ),
                                  Text(
                                    'Phone call',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color:
                                          const Color.fromARGB(255, 95, 94, 94),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '  Select Domain  ',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '   Get Premium   ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              backgroundColor: WidgetStateProperty.all(
                                Color.fromARGB(255, 49, 89, 121),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget cardelevated() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        // bottom: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: const Color.fromARGB(255, 49, 89, 121),
                  ),
                  child: Icon(
                    FontAwesomeIcons.bagShopping,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'dukaan',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'PREMIUM',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 49, 89, 121),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Icon(
                FontAwesomeIcons.registered,
                size: 10,
              ),
            ],
          ),
          Text(
            'Get Dukaan Premium for just ₹4,999/year',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'All the advanced features for scaling your business',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 183, 182, 182),
            ),
          ),
        ],
      ),
    );
  }

  Widget faquesions({required String question, required String answer}) {
    return ExpansionTile(
      title: Text(
        question,
        style: TextStyle(
          fontSize: 17,
        ),
      ),
      // trailing: isexpanded ? Icon(Icons.minimize) : Icon(Icons.add),
      // onExpansionChanged: (bool expanded) {
      //   setState(() {
      //     isexpanded = expanded;
      //   });
      // },
      children: [
        Text(
          answer,
          style: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 112, 112, 112),
          ),
        ),
      ],
    );
  }
}
