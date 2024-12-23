import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/feature/presentation/customer/controller/c_customer_add/c_customer_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/customer/ui/ui_customer_add/ui_customer_add.dart';
import 'package:cashier_mini/app/feature/presentation/customer/ui/ui_customer_list/ui_customer_list.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CustomerRoute {
  static const String _base = '/customer';
  static String list = '$_base/list';
  static String add = '$_base/add';

  static List<RouteBase> routers() => [
        GoRoute(
          path: list,
          builder: (BuildContext context, GoRouterState state) {
            return UICustomerList(
              onSelect: state.extra as ValueChanged<dynamic>?,
            );
          },
        ),
        GoRoute(
          path: add,
          builder: (BuildContext context, GoRouterState state) {
            return UICustomerAdd(args: state.extra as CCustomerAddArgs);
          },
        ),
      ];

  static toList(BuildContext context, {ValueChanged? onSelect}) async {
    return context.push(list, extra: onSelect);
  }

  static toAdd(BuildContext context, ValueChanged<MCustomer> onUpdate) async {
    return context.push(add, extra: CCustomerAddArgs(onUpdate: onUpdate));
  }

  static toDetail(BuildContext context, MCustomer data, ValueChanged<MCustomer> onUpdate, ValueChanged<MCustomer> onDelete) async {
    return context.push(add, extra: CCustomerAddArgs(onUpdate: onUpdate, data: data, onDelete: onDelete));
  }
}
