import 'package:dashboard_app/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(
          // OverviewPage()
          const Scaffold());
    case driversPageRoute:
      return _getPageRoute(
          // DriversPage()
          const Scaffold());
    case clientsPageRoute:
      return _getPageRoute(const Scaffold()

          // ClientsPage()
          );
    default:
      return _getPageRoute(const Scaffold()

          // OverviewPage()
          );
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
