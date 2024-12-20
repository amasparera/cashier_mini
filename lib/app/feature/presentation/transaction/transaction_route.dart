import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/controller/transaction_cart/c_transaction_cart_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/ui/transaction_cart/ui_transaction_cart.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/ui/transaction_create/ui_transaction_create.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class TransactionRoute {
  static const String _base = '/transaction';
  static String cart = '$_base/cart';
  static String create = '$_base/create';

  static List<RouteBase> routers() => [
        GoRoute(
          path: create,
          builder: (BuildContext context, GoRouterState state) {
            return const UITransactionCreate();
          },
        ),
        GoRoute(
          path: cart,
          builder: (BuildContext context, GoRouterState state) {
            return UITransactionCart(args: state.extra as CTransactionCartArgs);
          },
        ),
      ];

  static toCreate(BuildContext context) async {
    return context.push(create);
  }

  static toCart(BuildContext context, final Map<MProduct, int> order) async {
    return context.push(cart, extra: CTransactionCartArgs(order: order));
  }
}
