import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/exercise_list_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: ExerciseListRoute.page,initial: true),
    AutoRoute(page: DummyListUiRoute.page),
    AutoRoute(page: AdvanceWidgetRoute.page),

  ];
}
