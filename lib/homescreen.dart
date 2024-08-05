import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/additionalinfo.dart';
import 'package:ui_app/catalogue.dart';
import 'package:ui_app/dukaanpremium.dart';
import 'package:ui_app/managestore.dart';
import 'package:ui_app/order.dart';
import 'package:ui_app/payments.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 49, 89, 121),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Dukaan Store',
            style: GoogleFonts.abel(
                color: const Color.fromARGB(255, 242, 238, 238),
                fontSize: 35,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Managestore();
                  }));
                },
                label: const Row(
                  children: [
                    Text(
                      'Manage Store',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Order();
                  }));
                },
                label: const Row(
                  children: [
                    Text(
                      'Order ',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 239,
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (cntxt) {
                    return Catalogue();
                  }));
                },
                label: const Row(
                  children: [
                    Text(
                      'Catalogue ',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 205,
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Payments();
                  }));
                },
                label: const Row(
                  children: [
                    Text(
                      ' Payments',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 206,
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Dukaanpremium();
                  }));
                },
                label: const Row(
                  children: [
                    Text(
                      'Dukaan premium ',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 152,
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Additionalinfo();
                  }));
                },
                label: const Row(
                  children: [
                    Text(
                      'Additional information',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Icon(Icons.arrow_right),
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
