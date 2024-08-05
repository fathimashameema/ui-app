import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/products.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 49, 89, 121),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Catalogue ',
              style: GoogleFonts.abel(
                  color: const Color.fromARGB(255, 242, 238, 238),
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
              labelColor: Colors.white,
              labelStyle: TextStyle(
                fontSize: 19,
              ),
              unselectedLabelColor: Color.fromARGB(255, 189, 187, 187),
              tabs: [
                Tab(
                  text: 'Products',
                ),
                Tab(
                  text: 'Categories',
                ),
              ]),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        body: const TabBarView(children: [
          Products(),
          Center(child: Text('Categories')),
        ]),
      ),
    );
  }
}
