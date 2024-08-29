import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/weather/weather_repository.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WeatherCard extends ConsumerWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final weather = ref.watch(getWeatherProvider);

    return Skeletonizer(
      enabled: weather.isLoading,
      child: weather.when(
        data: (data) => Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.umbrella,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '今の天気アドバイス',
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text((data?.maxRainfall ?? 0) > 50
                    ? '雨降るから傘を持って行った方が良いよ'
                    : '雨は振らないらしいから傘はいらないかもね'),
                const SizedBox(height: 16),
                Text("降水確率: ${data?.maxRainfall}%"),
              ],
            ),
          ),
        ),
        error: (err, stackTrace) => Card(
          child: ListTile(
            title: const Text('エラーが発生しました'),
            subtitle: Text(err.toString()),
          ),
        ),
        loading: () => const Card(
          child: ListTile(
            title: Bone.text(words: 2),
          ),
        ),
      ),
    );
  }
}
