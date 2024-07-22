import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_app/headshot/bloc/headshot_bloc.dart';
import 'package:flutter_desktop_app/headshot/page/headshot_page.dart';
import 'package:flutter_desktop_app/screenshot/bloc/screenshot_bloc.dart';
import 'package:flutter_desktop_app/screenshot/page/screenshot_page.dart';
import 'package:flutter_desktop_app/timer/bloc/timer_bloc.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.pink,
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ScreenshotPage(),

                  SizedBox(width: 10,),

                  HeadshotPage()
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: BlocBuilder<TimerBloc, TimerState>(
                builder: (context, state) {
                  return Center(
                    child: Text(
                      //'Elapsed Times: ${state.duration} seconds\n Please review the README file to ensure that all setup steps have been completed correctly. Thank you.',
                      'Elapsed Times: ${state.duration} seconds',
                     textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return SizedBox(
            height: 50,
            width: 100,
            child: FloatingActionButton(
              onPressed: () {
                if (state.isRunning) {
                  context.read<TimerBloc>().add(const TimerStopped());
                  context.read<HeadshotBloc>().add(const StopHeadshotCapture());
                } else {
                  context.read<TimerBloc>().add(const TimerStarted());
                  context.read<ScreenshotBloc>().add(const ScreenshotCapture());
                  context.read<HeadshotBloc>().add(const CaptureHeadshot());
                  //context.read<HeadshotBloc>().add(const StartHeadshotCapture());

                }
              },
              tooltip: 'Timer',
              child: Text(state.isRunning ? 'Stop Timer' : 'Start Timer'),
            ),
          );
        },
      ), // This trailing c
    );
  }
}
