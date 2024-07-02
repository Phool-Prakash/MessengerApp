import 'package:flutter/material.dart';

import '../destinations/destinations.dart';

class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({super.key, required this.selectedIndex, this.onDestinationSelected});

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: destinations.map<NavigationDestination>((d){
      return NavigationDestination(icon: Icon(d.icon), label: d.label);
    }).toList(),
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
