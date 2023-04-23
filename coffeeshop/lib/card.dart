import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(
      {super.key,
      required this.img,
      required this.name,
      required this.dess,
      required this.price});

  final String img;
  final String name;
  final String dess;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 37, 44),
          borderRadius: BorderRadius.circular(20)),
      height: 230,
      width: 170,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                //flex: 2,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                Text(
                  dess,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 10),
                )
              ],
            )),
            Expanded(
                //flex: 2,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 198, 127, 81),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
