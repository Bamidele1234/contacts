import 'package:exercise5/bloc/app_bloc.dart';
import 'package:exercise5/theme_data/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'app_router/router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Get an instance of the App Router
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppBloc>(
      create: (_) => AppBloc(),
      child: MaterialApp.router(
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
        theme: MyTheme().themeData,
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
