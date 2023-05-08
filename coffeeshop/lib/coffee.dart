import 'package:coffeeshop/bottom.dart';
import 'package:coffeeshop/card.dart';
import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 15, 20),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 37, 44),
                      borderRadius: BorderRadius.circular(10)),
                ),

                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/WhatsApp Image 2023-04-22 at 11.09.57 PM.jpeg'),
                  radius: 20,
                )
                //Icon(Icons.menu_book_outlined),
              ],
            ),
            Text(
              'Find the best',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 40),
            ),
            Text(
              'Coffee for you',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              //keyboardType: TextInputType.text,

              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.grey.shade400)
                  ),
                  fillColor: Color.fromARGB(255, 31, 37, 44),
                  filled: true),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    'Capuccino',
                    style: TextStyle(
                        color: Color.fromARGB(255, 198, 127, 81),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Espresso',
                      style: TextStyle(
                          color: Color.fromARGB(255, 80, 86, 94),
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                  SizedBox(
                    width: 20,
                  ),
                  Text('latte',
                      style: TextStyle(
                          color: Color.fromARGB(255, 80, 86, 94),
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                  SizedBox(
                    width: 20,
                  ),
                  Text('American',
                      style: TextStyle(
                          color: Color.fromARGB(255, 80, 86, 94),
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Plane',
                      style: TextStyle(
                          color: Color.fromARGB(255, 80, 86, 94),
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                  SizedBox(
                    width: 20,
                  ),
                  Text('turkish',
                      style: TextStyle(
                          color: Color.fromARGB(255, 80, 86, 94),
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Home(
                      dess: 'with plane sugar',
                      img: 'assets/cofe.jpg',
                      name: 'Capucino',
                      price: 'RP 20,00',
                    ),
                    Home(
                      dess: 'with fresh milk',
                      img: 'assets/espresso.jpg',
                      name: 'Espresso',
                      price: 'RP 25.00',
                    ),
                    Home(
                      dess: '',
                      img: '',
                      name: '',
                      price: '',
                    ),
                    Home(
                      dess: '',
                      img: '',
                      name: '',
                      price: '',
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Special For you',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MySta(),
    );
  }
}
