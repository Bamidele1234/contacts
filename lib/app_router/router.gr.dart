// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:exercise5/Pages/contact_screen.dart' as _i2;
import 'package:exercise5/Pages/main_screen.dart' as _i1;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    ContactScreenRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.ContactScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          MainScreenRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          ContactScreenRoute.name,
          path: '/contacts',
        ),
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i3.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.ContactScreen]
class ContactScreenRoute extends _i3.PageRouteInfo<void> {
  const ContactScreenRoute()
      : super(
          ContactScreenRoute.name,
          path: '/contacts',
        );

  static const String name = 'ContactScreenRoute';
}
