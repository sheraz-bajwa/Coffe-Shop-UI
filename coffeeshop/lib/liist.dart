import 'package:coffeeshop/services/model.dart';
import 'package:coffeeshop/services/state_services.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Countries_wise_Cases extends StatefulWidget {
  const Countries_wise_Cases({super.key});

  @override
  State<Countries_wise_Cases> createState() => _Countries_wise_CasesState();
}

class _Countries_wise_CasesState extends State<Countries_wise_Cases>
    with TickerProviderStateMixin {
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

  Widget build(BuildContext context) {
    Weatherservices weatherServices = Weatherservices();
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 30, 30, 30),
          elevation: 0,
        ),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
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
                  borderSide: BorderSide(width: 1, color: Color(0xffE6E8EB)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 1, color: Color(0xffE6E8EB))),
                hintText: 'Search City',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: GestureDetector(
                  onTap: () async {
                    final response = await weatherServices.CountriesRecord(
                        _cityTextController.text);
                    //getweather(_cityTextController.text);
                    setState(() {
                      _response = response as recipy?;
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
          ),
          Expanded(
              child: FutureBuilder(
                  future: weatherServices.CountriesRecord(
                      _cityTextController as String),
                  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        color: Colors.white,
                                      ),
                                      title: Container(
                                        height: 10,
                                        width: double.infinity,
                                        color: Colors.white,
                                      ),
                                      subtitle: Container(
                                        height: 10,
                                        width: double.infinity,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                baseColor: Colors.grey,
                                highlightColor: Colors.grey.shade600);
                          });
                    } else {
                      return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            ListTile(
                              leading: Image.network(
                                snapshot.data![index]['products']['id'],
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                snapshot.data![index]['title'],
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                snapshot.data![index]['id'].toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          });
                    }
                  }))
        ])));
  }
}
