import 'package:dashboard_app/helpers/local_navigator.dart';
import 'package:dashboard_app/helpers/responsive_widget.dart';
import 'package:dashboard_app/widgets/large_screen.dart';
import 'package:dashboard_app/widgets/side_menu.dart';
import 'package:dashboard_app/widgets/top_navigation.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
          largeScreen: const LargeScreen(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )),
    );
  }
}
