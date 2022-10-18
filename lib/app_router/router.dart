import 'package:auto_route/annotations.dart';
import 'package:exercise5/Pages/contact_screen.dart';
import 'package:exercise5/Pages/main_screen.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: MainScreen, initial: true),
    AutoRoute(path: ContactScreen.tag, page: ContactScreen),
  ],
)
class $AppRouter {}
