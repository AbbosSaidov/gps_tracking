import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gps_tracking/src/presentation/ui/main_page/cubit/main_page_cubit.dart';

import 'cubit/main_page_state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainPageCubit(),
      child: const MainPageView(),
    );
  }
}

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<MainPageCubit>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gps tracking'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<MainPageCubit, MainPageState>(
                buildWhen: (previousState, currentState) =>
                    previousState.distance != currentState.distance,
                builder: (context, state) {
                  return Text("Distance :${state.distance} km ");
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<MainPageCubit, MainPageState>(
                buildWhen: (previous, current) =>
                previous.elapsedTime != current.elapsedTime,
                builder: (context, state) {
                  final hours = state.elapsedTime.inHours;
                  final minutes = state.elapsedTime.inMinutes.remainder(60);
                  final seconds = state.elapsedTime.inSeconds.remainder(60);
                  return Text(
                    "Time: ${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}",
                    style: Theme.of(context).textTheme.labelLarge,
                  );
                },
              ),
              const SizedBox(height: 16),
              BlocBuilder<MainPageCubit, MainPageState>(
                buildWhen: (previous, current) =>
                previous.isStopwatchRunning != current.isStopwatchRunning,
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      bloc.toggleStopwatch();
                    },
                    child: Text(state.isStopwatchRunning ? "Stop" : "Start"),
                  );
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  bloc.resetStopwatch();
                },
                child: const Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
