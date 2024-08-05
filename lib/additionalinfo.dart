import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Additionalinfo extends StatefulWidget {
  const Additionalinfo({super.key});

  @override
  State<Additionalinfo> createState() => _AdditionalinfoState();
}

class _AdditionalinfoState extends State<Additionalinfo> {
  bool switchkey = false;
  List<IconData> icons = [
    Icons.share_outlined,
    Icons.language,
    FontAwesomeIcons.whatsapp,
    Icons.lock,
    Icons.star_border,
    Icons.logout,
  ];

  List<String> texts = [
    'Share Dukaan App',
    'Change Language',
    'Whatsapp Chat Support',
    'Privacy Policy',
    'Rate Us',
    'Sign Out',
  ];
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
            'Additional Information ',
            style: GoogleFonts.abel(
                color: const Color.fromARGB(255, 242, 238, 238),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: texts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          if (index == 2) {
                            setState(() {
                              switchkey = !switchkey;
                            });
                          }
                        },
                        splashColor: const Color.fromARGB(255, 212, 210, 210),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                children: [
                                  Icon(
                                    icons[index],
                                    size: 25,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(texts[index],
                                      style: GoogleFonts.kanit(fontSize: 17)),
                                ],
                              ),
                            ),
                            index == 2
                                ? Transform.scale(
                                    scale: 0.75,
                                    child: Switch.adaptive(
                                        value: (switchkey),
                                        onChanged: (value) {
                                          setState(() {
                                            switchkey = value;
                                          });
                                        }),
                                  )
                                : const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const Text(
              'version',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 114, 113, 113)),
            ),
            const Text(
              '2.4.2',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
