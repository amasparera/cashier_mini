import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/presentation/suplayer/controller/c_suplayer_add/c_suplayer_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/suplayer/ui/ui_suplayer_add/ui_suplayer_add.dart';
import 'package:cashier_mini/app/feature/presentation/suplayer/ui/ui_suplayer_list/ui_suplayer_list.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SuplayerRoute {
  static const String _base = '/suplayer';
  static String list = '$_base/list';
  static String add = '$_base/add';

  static List<RouteBase> routers() => [
        GoRoute(
          path: list,
          builder: (BuildContext context, GoRouterState state) {
            return UISuplayerList(
              onSelect: state.extra as ValueChanged<dynamic>?,
            );
          },
        ),
        GoRoute(
          path: add,
          builder: (BuildContext context, GoRouterState state) {
            return UISuplayerAdd(args: state.extra as CSuplayerAddArgs);
          },
        ),
      ];

  static toList(BuildContext context, {ValueChanged? onSelect}) async {
    return context.push(list, extra: onSelect);
  }

  static toAdd(BuildContext context, ValueChanged<MSuplayer> onUpdate) async {
    return context.push(add, extra: CSuplayerAddArgs(onUpdate: onUpdate));
  }

  static toDetail(BuildContext context, MSuplayer data, ValueChanged<MSuplayer> onUpdate, ValueChanged<MSuplayer> onDelete) async {
    return context.push(add, extra: CSuplayerAddArgs(onUpdate: onUpdate, data: data, onDelete: onDelete));
  }
}
