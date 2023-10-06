import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work/assignemt_category_tabs_favorite/screen/assignment_2.dart';
import 'package:home_work/assignemt_category_tabs_favorite/widget/category_widget.dart';
import 'package:home_work/assignemt_todo/screen/all_tasks_screen.dart';
import 'package:home_work/login/app_route.dart';
import 'package:home_work/login/auth_provider.dart';
import 'package:home_work/login/login_screen.dart';
import 'package:home_work/navigator_train/screen/profile_page.dart';
import 'package:home_work/navigator_train/screen/register_page.dart';
import 'package:provider/provider.dart';

import 'assignemt1/assignment _1.dart';
import 'assignemt3_products/screen/categories_screen.dart';
import 'assignemt3_products/widget/trip_item.dart';
import 'custom_shape.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppController>(create: (context) =>AppController())
      ,Provider(create: (context) => AuthProvider(),)
       ],
    child: EasyLocalization(
        supportedLocales: [
          Locale(
            'en',
          ),
          Locale('ar')
        ],
        path: 'assets/localization',
        fallbackLocale: Locale('en'),
        child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:(context, child) {
          return Builder(
              builder: (context) {
                return MaterialApp(
                    navigatorKey: AppRoute.naveAppKey,
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    theme: Provider
                        .of<AppController>(context)
                        .isDark
                        ? ThemeData.dark()
                        : ThemeData.light(),
                    title: 'Flutter Demo',
                    debugShowCheckedModeBanner: false,
                    home: LoginScreen(),
                    routes: {
                      'to_profile_page': (context) => ProfilePage(),
                      'to_Assiment1': (context) => Assignment_1()
                    }


                );
              }
          );
        },

      );
    });


  }
}

class AppController extends ChangeNotifier {
  // AppController( this.context);
  bool isDark = false;
  bool isComplete = false;
  bool isFav = false;

  // BuildContext context;


  changeLanguge() {
    notifyListeners();
  }

  onChange() {
    isDark = !isDark;
    notifyListeners();
  }

  favState(CategoryWidget categoryWidget) {
    categoryWidget.category.favoriteState =
    !categoryWidget.category.favoriteState;
    notifyListeners();
  }

  updateUi() {
    isComplete = !isComplete;
    // isComplete?Colors.red:Colors.white;

    notifyListeners();
  }
}
