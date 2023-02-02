import 'package:flutter/material.dart';
import 'package:world_api/weather_model.dart';

import 'api_class.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  WheatherData service = WheatherData();
  Wheather w = new Wheather();

  String c_whether = '';
  double temp = 0;
  double farh = 0;
  @override
  void initState() {
    super.initState();
    getWhether();
  }

  void getWhether() async {
    w = await service.getWhetherData("Kerala");
    // print(w.temperature_c);
    // print(w.temperature_f);
    // print(w.condition);

    setState(() {
      c_whether = w.condition;
      temp = w.temperature_c;
      farh = w.temperature_f;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/weather.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "LONODON",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          fontFamily: "KaushanScript"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Friday, June 21",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          c_whether.toString(),
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Icon(
                            Icons.thermostat,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            temp.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Icon(
                            Icons.thermostat,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            farh.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    temp.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 100),
                  ),
                  Text(
                    "°",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 80),
                  ),
                  Text(
                    "C",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
