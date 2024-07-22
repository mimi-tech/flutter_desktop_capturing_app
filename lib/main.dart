import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_app/headshot/bloc/headshot_bloc.dart';
import 'package:flutter_desktop_app/screenshot/bloc/screenshot_bloc.dart';
import 'package:flutter_desktop_app/timer/bloc/timer_bloc.dart';
import 'package:flutter_desktop_app/timer/page/timer_page.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TimerBloc()),
        BlocProvider(create: (context) => ScreenshotBloc()),
        BlocProvider(create: (context) => HeadshotBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  const TimerPage(),
      ),
    );
  }
}

