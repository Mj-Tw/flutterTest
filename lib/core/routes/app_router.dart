import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/main_page/main_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: ExerciseListRoute.page,initial: true),
    AutoRoute(page: DummyListUiRoute.page),
    AutoRoute(page: SimpleCalculatorRoute.page),
    AutoRoute(page: AdvanceWidgetRoute.page),
    AutoRoute(page: InputValidationRoute.page),
    AutoRoute(page: CounterRoute.page),
    AutoRoute(page: NewsRoute.page),
    AutoRoute(page: MostPopularRoute.page),
    AutoRoute(page: TopStoriesRoute.page),

  ];
}
