import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_app/screenshot/bloc/screenshot_bloc.dart';

class ScreenshotPage extends StatelessWidget {
  const ScreenshotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenshotBloc, ScreenshotState>(
      builder: (context, state) {
        if (state.screenshot != null) {
          return Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('Screenshot:'),
                  Image.memory(state.screenshot!,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ),
          );
        }
        if(state.errorMessage != null){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(state.errorMessage.toString(),style: const TextStyle(color: Colors.red),),
          );
        }
        return Container();
      },
    );
  }
}
