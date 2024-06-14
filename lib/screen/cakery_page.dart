import 'package:flutter/material.dart';
import 'package:flutter_cakery/data/cake.dart';
import 'package:flutter_cakery/screen/cakery_detail.dart';

class CakeryPage extends StatelessWidget {
  const CakeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 80,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return _buildCard(listCakes[index], context);
          },
          itemCount: listCakes.length,
        ),
      ),
    );
  }
}

Widget _buildCard(
  Cake cake,
  context,
) {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CakeryDetail(
            assetPath: cake.imageUrl,
            cookieprice: cake.price,
            cookiename: cake.name,
          );
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            )
          ],
          color: Colors.white,
        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  cake.isFavorite
                      ? const Icon(
                          Icons.favorite,
                          color: Color(0xFFEF7532),
                        )
                      : const Icon(
                          Icons.favorite_border,
                          color: Color(0xFFEF7532),
                        )
                ],
              ),
            ), //hero
            Container(
              height: 92,
              width: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(cake.imageUrl),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Rp ${cake.price}',
                style: const TextStyle(
                    color: Color(0xFFCC8053),
                    fontFamily: 'Varela',
                    fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                cake.name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color(0xFFEBEBEB),
                height: 1.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chat,
                        color: Color(0xFFD17E50),
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xFFD17E50),
                            fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      // Icon(
                      //   // Iconsemove_circle_outline,
                      //   color: const Color(0xFFD17E50),
                      //   size: 16,
                      // ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xFFD17E50),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFFD17E50),
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
