import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCarouselFB2 extends StatefulWidget {
  const CustomCarouselFB2({Key? key}) : super(key: key);

  @override
  _CustomCarouselFB2State createState() => _CustomCarouselFB2State();
}

class _CustomCarouselFB2State extends State<CustomCarouselFB2> {
  final double carouselItemMargin = 16;

  late PageController _pageController;
  int _position = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: .7);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: 1, // Only one card
      onPageChanged: (int position) {
        setState(() {
          _position = position;
        });
      },
      itemBuilder: (BuildContext context, int position) {
        return Stack(
          children: [
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 180,
                width: 375,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            '20% ',
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w800,
                              fontSize: 35,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Discount',
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'on your first purchase',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Shop now',
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              top: -90,
              child: Image.asset(
                'assets/images/Green 1.png',
                height: 500,
                width: 550,
              ),
            ),
            // Scrollable Cards
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardFb1(
                      text: "Card 1",
                      imageUrl: "URL for Card 1",
                      subtitle: "Subtitle for Card 1",
                      onPressed: () {},
                    ),
                    CardFb1(
                      text: "Card 2",
                      imageUrl: "URL for Card 2",
                      subtitle: "Subtitle for Card 2",
                      onPressed: () {},
                    ),
                    CardFb1(
                      text: "Card 3",
                      imageUrl: "URL for Card 3",
                      subtitle: "Subtitle for Card 3",
                      onPressed: () {},
                    ),
                    // Add more cards as needed
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class CardFb1 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CardFb1({
    required this.text,
    required this.imageUrl,
    required this.subtitle,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 250,
        height: 230,
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.05),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 90, fit: BoxFit.cover),
            const Spacer(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
