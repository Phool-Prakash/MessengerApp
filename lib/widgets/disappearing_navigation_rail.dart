import 'package:flutter/material.dart';
import 'package:messenger_app/animations/animations.dart';
import 'package:messenger_app/destinations/destinations.dart';
import 'package:messenger_app/transitions/nav_rail_transition.dart';

class DisappearingNavigationRail extends StatelessWidget {
  const DisappearingNavigationRail(
      {super.key,
      required this.backgroundColor,
      required this.selectedIndex,
      this.onDestinationSelected,
      required this.railAnimation,
      required this.railFabAnimation});

  final RailAnimation railAnimation;
  final RailFabAnimation railFabAnimation;
  final Color backgroundColor;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: backgroundColor,
      child: NavigationRail(
          backgroundColor: backgroundColor,
          onDestinationSelected: onDestinationSelected,
          leading: Column(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              const SizedBox(
                height: 8.0,
              ),
              FloatingActionButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Icon(Icons.add),
              )
            ],
          ),
          groupAlignment: -0.85,
          destinations: destinations.map((d) {
            return NavigationRailDestination(
                icon: Icon(d.icon), label: Text(d.label));
          }).toList(),
          selectedIndex: selectedIndex),
    );
  }
}
