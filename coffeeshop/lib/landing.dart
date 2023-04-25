import 'package:coffeeshop/services/model.dart';
import 'package:coffeeshop/services/state_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> with TickerProviderStateMixin {
  TextEditingController _cityTextController = TextEditingController();
  final now = DateTime.now();
  String recipyee = "";
  recipy? _response;

  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void dispose() {
    super.dispose();
    // TODO: implement setState
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Weatherservices weatherServices = Weatherservices();
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _cityTextController,
                    onChanged: (value) {
                      recipyee = value;
                      setState(() {
                        // checkweather(
                        //     "${snapshot.data[0].weather}", context);
                      });
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xffE6E8EB)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xffE6E8EB))),
                      hintText: 'Search City',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          final response = await weatherServices
                              .fetchRecords(_cityTextController.text);
                          //getweather(_cityTextController.text);
                          setState(() {
                            _response = response;
                          });

                          _cityTextController.clear();
                        },
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FutureBuilder(
                      future: weatherServices
                          .fetchRecords(_cityTextController.text),
                      builder: (context, AsyncSnapshot<recipy> snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                now.hour.toString() +
                                    ' : ' +
                                    now.minute.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 2,
                                    fontSize: 40),
                              ),
                              Text(snapshot.data!.number.toString())
                            ],
                          );
                        } else {
                          return Center(
                            child: SpinKitSpinningLines(
                              color: Colors.amberAccent,
                              size: 50,
                              controller: _controller,
                            ),
                          );
                        }
                      }),
                ],
              )),
        ));
  }
}
