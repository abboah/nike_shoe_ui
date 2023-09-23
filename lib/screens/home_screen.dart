import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_home/model/shoe_model.dart';
import 'package:sample_home/widgets/bottom_nav_bar.dart';
import 'package:sample_home/widgets/shoe_card.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Model.initialisenike();
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 34,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: const Border(
                  right: BorderSide(width: 1),
                  left: BorderSide(width: 1),
                  top: BorderSide(width: 1),
                  bottom: BorderSide(width: 1),
                )),
            child: const Icon(
              Icons.align_horizontal_left,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 0,
        title: const Image(
          fit: BoxFit.cover,
          height: 67.23,
          width: 82,
          color: Colors.black,
          image: AssetImage(
            'assets/images/Nike icon mark.png',
          ),
        ),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 34,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: const Border(
                    right: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                    top: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: screenheight / 3,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: screenheight / 3.5,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text('20% ',
                                        style: GoogleFonts.workSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 35,
                                            color: Colors.black)),
                                    Text('Discount',
                                        style: GoogleFonts.workSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 25,
                                            color: Colors.black)),
                                  ],
                                ),
                                Text('on your first purchase',
                                    style: GoogleFonts.workSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black)),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 35,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Center(
                                    child: Text('Shop now',
                                        style: GoogleFonts.workSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.white)),
                                  ),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: screenheight / 3.5,
                                child: Transform.scale(
                                  scale: 1.3,
                                  child: Image.asset(
                                    'assets/images/Green 1.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 7,
                  width: 7,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                  ),
                ),
                ...List.generate(
                  3,
                  (index) => Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: <Widget>[
                  Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text('All',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('Running',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('Sneakers',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('Formal',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('Casual',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ]),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 9 / 12,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemCount: Model.nike.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return GridItem(model: Model.nike[index]);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
      extendBody: false,
    );
  }
}
