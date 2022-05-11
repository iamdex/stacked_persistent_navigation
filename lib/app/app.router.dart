// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/first/first_view.dart';
import '../ui/views/first_inner/first_inner_view.dart';
import '../ui/views/hello_stacked/hello_stacked_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/second_inner/second_inner_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/startup-view';
  static const String homeView = '/home-view';
  static const String firstView = '/first-view';
  static const String helloStackedView = '/hello-stacked-view';
  static const all = <String>{
    startupView,
    homeView,
    firstView,
    helloStackedView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(
      Routes.firstView,
      page: FirstView,
      generator: FirstViewRouter(),
    ),
    RouteDef(Routes.helloStackedView, page: HelloStackedView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    FirstView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstView(),
        settings: data,
      );
    },
    HelloStackedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HelloStackedView(),
        settings: data,
      );
    },
  };
}

class FirstViewRoutes {
  static const String firstInnerView = '/first-inner-view';
  static const String secondInnerView = '/second-inner-view';
  static const all = <String>{
    firstInnerView,
    secondInnerView,
  };
}

class FirstViewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(FirstViewRoutes.firstInnerView, page: FirstInnerView),
    RouteDef(FirstViewRoutes.secondInnerView, page: SecondInnerView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    FirstInnerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstInnerView(),
        settings: data,
      );
    },
    SecondInnerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SecondInnerView(),
        settings: data,
      );
    },
  };
}
