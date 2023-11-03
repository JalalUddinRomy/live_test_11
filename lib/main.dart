import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> weatherDataList = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5,
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8,
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2,
    },
    {

      "city": "Tokyo",

      "temperature": 28,

      "condition": "Rainy",

      "humidity": 75,

      "windSpeed": 8.0

    },

    {

      "city": "Sydney",

      "temperature": 22,

      "condition": "Cloudy",

      "humidity": 55,

      "windSpeed": 7.3

    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather Info App"),
        ),
        body: ListView.separated(
          itemCount: weatherDataList.length,
          itemBuilder: (context, index) {
            final cityData = weatherDataList[index];
            final city = cityData['city'];
            final temperature = cityData['temperature'];
            final condition = cityData['condition'];
            final humidity = cityData['humidity'];
            final windSpeed = cityData['windSpeed'];

            return Card(
              child: ListTile(
                title: Text(city),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Temperature: $temperature°C"),
                    Text("Condition: $condition"),
                    Text("Humidity: $humidity%"),
                    Text("Wind Speed: $windSpeed km/h"),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (_, __) {
            return Divider(
              height: 0,
            );
          },
        ),
      ),
    );
  }
}