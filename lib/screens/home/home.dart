import 'package:flutter/material.dart';
import 'package:mobile/presentation/widgets/avatar.dart';
import 'package:mobile/screens/home/widgets/advice_card.dart';
import 'package:mobile/screens/home/widgets/least_event_card.dart';
import 'package:mobile/screens/home/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: const [
          UserAvatar(),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16),
              AdviceCard(),
              SizedBox(height: 16),
              LeastEventCard(),
              SizedBox(height: 16),
              WeatherCard(),
            ],
          ),
        ),
      ),
    );
  }
}
