import 'package:flutter/material.dart';
import 'package:flutter_cakery/widget/navbar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CakeryDetail extends StatelessWidget {
  final String assetPath;
  final String cookieprice;
  final String cookiename;

  const CakeryDetail({
    Key? key,
    required this.assetPath,
    required this.cookieprice,
    required this.cookiename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Pesan',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Kue',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
            child: Text(
              'Rp $cookieprice',
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
            child: Text(
              cookiename,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0),
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 52.0,
              child: const Text(
                'Bolu atau kue bolu adalah kue berbahan dasar tepung, gula, dan telur. Kue bolu dan cake umumnya dimatangkan dengan cara dipanggang di dalam oven, walaupun ada juga bolu yang dikukus',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100.0,
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFFF17532),
              ),
              child: Center(
                child: InkWell(
                  onTap: () async {
                    // await FlutterLaunch.launchWhatsapp(
                    //   phone: '6285640899224',
                    //   message:
                    //       'Hi Bahri Cakery,Saya mau order $cookiename untuk hari ini, apa bisa diantar kerumah?',
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 32,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Pesan via Whatsapp',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 28.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
