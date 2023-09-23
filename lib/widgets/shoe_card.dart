import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_home/model/shoe_model.dart';

class GridItem extends StatelessWidget {
  final Model model;
  const GridItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.9 * (12 / 9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.withOpacity(0.1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            model.image,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              title: Text(
                model.name,
                style: GoogleFonts.workSans(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(model.price,
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.normal, color: Colors.black)),
              trailing: Container(
                height: 34,
                width: 36,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: const Border(
                      right: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    )),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
