import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_add/c_product_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/product/ui/ui_product_add/ui_product_add.dart';
import 'package:cashier_mini/app/feature/presentation/product/ui/ui_product_list/ui_product_list.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class ProductRoute {
  static const String _base = '/product';
  static String list = '$_base/list';
  static String add = '$_base/add';

  static List<RouteBase> routers() => [
        GoRoute(
          path: list,
          builder: (BuildContext context, GoRouterState state) {
            return const UIProductList();
          },
        ),
        GoRoute(
          path: add,
          builder: (BuildContext context, GoRouterState state) {
            return UIProductAdd(args: state.extra as CProductAddArgs);
          },
        ),
      ];

  static toList(BuildContext context) async {
    return context.push(list);
  }

  static toAdd(BuildContext context, ValueChanged<MProduct> onUpdate) async {
    return context.push(add, extra: CProductAddArgs(onUpdate: onUpdate));
  }

  static toDetail(BuildContext context, MProduct data, ValueChanged<MProduct> onUpdate, ValueChanged<MProduct> onDelete) async {
    return context.push(add, extra: CProductAddArgs(onUpdate: onUpdate, data: data, onDelete: onDelete));
  }
}
