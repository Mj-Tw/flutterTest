// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:trinity_lecture_app/presentation/pages/advance_widget_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_list_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/exercise_list_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/splash_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AdvanceWidgetRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AdvanceWidgetPage(),
      );
    },
    DummyListUiRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyListUiPage(),
      );
    },
    ExerciseListRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ExerciseListPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AdvanceWidgetPage]
class AdvanceWidgetRoute extends _i5.PageRouteInfo<void> {
  const AdvanceWidgetRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AdvanceWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdvanceWidgetRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyListUiPage]
class DummyListUiRoute extends _i5.PageRouteInfo<void> {
  const DummyListUiRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyListUiRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyListUiRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ExerciseListPage]
class ExerciseListRoute extends _i5.PageRouteInfo<void> {
  const ExerciseListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ExerciseListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExerciseListRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
