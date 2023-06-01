import 'package:dashboard_app/constants/controller.dart';
import 'package:dashboard_app/helpers/responsive_widget.dart';
import 'package:dashboard_app/pages/overview/widgets/available_drivers_table.dart';
import 'package:dashboard_app/pages/overview/widgets/overview_cards_large.dart';
import 'package:dashboard_app/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard_app/pages/overview/widgets/overview_cards_small.dart';
import 'package:dashboard_app/pages/overview/widgets/revenue_section_large.dart';
import 'package:dashboard_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/revenue_section_small.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  const OverviewCardsMediumScreen()
                else
                  const OverviewCardsLargeScreen()
              else
                const OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),
              const AvailableDriversTable(),
            ],
          ),
        )
      ],
    );
  }
}
