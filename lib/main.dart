import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:match/modules/home/view/home_view.dart';
import 'package:match/modules/splash/binding/splash_binding.dart';
import 'package:match/provider/routes/routes.dart';


import 'modules/create/binding/create_binding.dart';
import 'modules/event/binding/event_binding.dart';
import 'modules/home/binding/home_binding.dart';
import 'modules/match/binding/match_binding.dart';

import 'modules/friendlyMatch/main_match.dart';

import 'provider/routes/pages.dart';
import 'util/const/style/global_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  KakaoSdk.init(nativeAppKey: 'eb293a1e5f1edb2e57c2443cea0cb779');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: ((context, child) {
          return GetMaterialApp(
            getPages: Pages.routes,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.white,
              fontFamily: 'AppleSDGothicNeo',
            ),
            supportedLocales: const [
              Locale('ko', 'KR'),
            ],
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            ),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            initialRoute: "/splash",
            initialBinding: SplashBinding(),
            smartManagement: SmartManagement.full,
            navigatorKey: Get.key,
          );
        }));
  }
}
