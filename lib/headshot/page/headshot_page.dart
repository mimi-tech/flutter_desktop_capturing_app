import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_app/headshot/bloc/headshot_bloc.dart';

class HeadshotPage extends StatelessWidget {
  const HeadshotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeadshotBloc, HeadshotState>(
      builder: (context, state) {
        if (state.headshot != null) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text('Headshot'),
                Image.memory(state.headshot!,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ],
            ),
          );
        }
        if(state.loading == true) {
          return
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( "Head shot Loading...",
                    style: TextStyle(color: Colors.white
                    )),
              ],
            );
        }

        if(state.errorMessage != null){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(state.errorMessage.toString(),style: const TextStyle(color: Colors.white),),
          );
        }
        return Container();
      },
    );
  }
}
