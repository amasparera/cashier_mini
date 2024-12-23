import 'package:cashier_mini/app/feature/presentation/dashboard/controller/dashboard/c_dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UIDashboard extends StatelessWidget {
  const UIDashboard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    const List<Widget> exampleBarDestinations = [
      NavigationDestination(
        tooltip: '',
        icon: Icon(Icons.home_outlined),
        label: 'Home',
        selectedIcon: Icon(Icons.home),
      ),
      NavigationDestination(
        tooltip: '',
        icon: Icon(Icons.stairs_outlined),
        label: 'Rekap',
        selectedIcon: Icon(Icons.stairs_rounded),
      ),
      NavigationDestination(
        tooltip: '',
        icon: Icon(Icons.wallet_outlined),
        label: 'Statistik',
        selectedIcon: Icon(Icons.wallet),
      )
    ];
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        destinations: exampleBarDestinations,
        selectedIndex: context.watch<CDashboardCubit>().state.index,
        onDestinationSelected: (index) => context.read<CDashboardCubit>().onSelectIndex(context, index),
      ),
    );
  }
}
