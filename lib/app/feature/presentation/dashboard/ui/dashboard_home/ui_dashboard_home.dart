import 'package:cashier_mini/app/feature/presentation/customer/customer_route.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_route.dart';
import 'package:cashier_mini/app/feature/presentation/suplayer/suplayer_route.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/transaction_route.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';

import '../../../../../entity/model/m_menu_home.dart';

class UIDashboardHome extends StatelessWidget {
  const UIDashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<MMenuHome> menus = [
      MMenuHome(icon: Icons.shopify, title: "", onTap: () => TransactionRoute.toCreate(context)),
      MMenuHome(icon: Icons.archive_sharp, title: "", onTap: () => ProductRoute.toList(context)),
      MMenuHome(icon: Icons.co_present_rounded, title: "", onTap: () => CustomerRoute.toList(context)),
      MMenuHome(icon: Icons.supervised_user_circle_rounded, title: "", onTap: () => SuplayerRoute.toList(context)),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const AppText(text: 'Home'),
      ),
      body: ListView(
        // padding: EdgeInsets.only(top: context.appMargin * 6),
        shrinkWrap: true,
        children: [
          Wrap(
              children: menus
                  .map(
                    (e) => AppCard(
                      borderRadius: BorderRadius.circular(context.appMargin * 2),
                      inPadding: EdgeInsets.all(context.appMargin * 3),
                      outPadding: EdgeInsets.only(left: context.appParrentMargin, top: context.appMargin * 3),
                      onTap: e.onTap,
                      child: Icon(
                        e.icon,
                        size: 72,
                      ),
                    ),
                  )
                  .toList())
        ],
      ),
    );
  }
}
