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
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   child: Column(
                  //     children: [

                  //     ],
                  //   ),
                  // ),
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
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    //keyboardType: TextInputType.text,

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.grey.shade400)),
                        //fillColor: Colors.grey.shade200,
                        filled: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      children: [
                        Home(
                          dess: '',
                          img: '',
                          name: '',
                          price: '',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
