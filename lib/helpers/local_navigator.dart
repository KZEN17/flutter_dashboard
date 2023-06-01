import 'package:dashboard_app/constants/controller.dart';
import 'package:dashboard_app/routing/routes.dart';
import 'package:dashboard_app/routing/router.dart';
import 'package:flutter/cupertino.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
