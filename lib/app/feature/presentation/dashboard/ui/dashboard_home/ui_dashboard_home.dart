import 'package:cashier_mini/app/feature/presentation/customer/customer_route.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_route.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';

class UIDashboardHome extends StatelessWidget {
  const UIDashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: EdgeInsets.only(top: context.appMargin * 6),
      shrinkWrap: true,
      children: [
        Wrap(
          children: [
            AppCard(
              borderRadius: BorderRadius.circular(context.appMargin * 2),
              inPadding: EdgeInsets.all(context.appMargin * 3),
              outPadding: EdgeInsets.only(left: context.appParrentMargin, top: context.appMargin * 3),
              child: const Icon(
                Icons.add_business_rounded,
                size: 72,
              ),
              onTap: () => ProductRoute.toList(context),
            ),
            AppCard(
              borderRadius: BorderRadius.circular(context.appMargin * 2),
              inPadding: EdgeInsets.all(context.appMargin * 3),
              outPadding: EdgeInsets.only(left: context.appParrentMargin, top: context.appMargin * 3),
              child: const Icon(
                Icons.co_present_rounded,
                size: 72,
              ),
              onTap: () => CustomerRoute.toList(context),
            )
          ],
        )
      ],
    );
  }
}
