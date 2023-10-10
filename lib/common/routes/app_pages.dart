import 'package:get/get.dart';
import '../../pages/home/index.dart';
import '../../pages/list/index.dart';
import '../../pages/list_detail/index.dart';
import '../../pages/login/index.dart';
import '../../pages/my/index.dart';
import '../../pages/notfound/index.dart';
import '../middleware/router_auth.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  //404
  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView(),
  );

  //路由
  static final routes = [
    // 白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
      transition: Transition.downToUp,
    ),

    //需要登录  中间件
    GetPage(
      name: AppRoutes.My,
      page: () => MyView(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),


    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page: () => DetailView(),
            ),
            GetPage(
              name: AppRoutes.Detail_ID,
              page: () => DetailView(),
            ),
          ],
        ),
      ],
    ),
  ];
}