import 'package:exercise5/bloc/app_bloc.dart';
import 'package:exercise5/pages/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppBloc>(
      create: (_) => AppBloc(),
      child: MaterialApp(
        // Make it responsive to different screen sizes
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1700,
          minWidth: 350,
          defaultScale: true,
          breakpoints: [
            // Define the breakpoints
            const ResponsiveBreakpoint.resize(350, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(600, name: TABLET),
            const ResponsiveBreakpoint.resize(800, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ],
        ),
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}
