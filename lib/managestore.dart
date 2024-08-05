import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Managestore extends StatefulWidget {
  const Managestore({super.key});

  @override
  State<Managestore> createState() => _ManagestoreState();
}

class _ManagestoreState extends State<Managestore> {
  List<IconData> icons = [
    Icons.campaign_sharp,
    Icons.currency_rupee_outlined,
    Icons.discount_outlined,
    Icons.people_alt,
    Icons.qr_code_scanner,
    Icons.money,
    Icons.format_align_left,
  ];
  List<List<String>> titles = [
    ['Marketing', 'Designs'],
    ['Online', 'Payments'],
    ['Discount', 'Coupons'],
    ['My', 'Customers'],
    ['Store', 'QR Code'],
    ['Extra', 'Charges'],
    ['Order', 'Form'],
  ];

  List<Color> colors = [
    const Color.fromARGB(255, 193, 118, 7),
    Colors.green,
    Colors.orange,
    const Color.fromARGB(255, 92, 126, 93),
    Colors.grey,
    Colors.deepPurple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 49, 89, 121),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Manage Store',
                style: GoogleFonts.abel(
                    color: const Color.fromARGB(255, 242, 238, 238),
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 13,
            mainAxisSpacing: 13,
            childAspectRatio: 0.5,
            mainAxisExtent: 135,
          ),
          itemCount: titles.length,
          itemBuilder: (context, index) => GridTile(
            header: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        icons[index],
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                if (index == 6)
                  Container(
                    height: 20,
                    width: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 64, 134, 66),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: const Text(
                      ' NEW',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  )
              ],
            ),
            footer: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles[index][0],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      titles[index][1],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 205, 203, 203),
                      spreadRadius: 6,
                      blurRadius: 9,
                    )
                  ]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.clipboard), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_outlined), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: 3,
      ),
    );
  }
}
