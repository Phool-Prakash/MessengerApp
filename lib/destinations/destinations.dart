import 'package:flutter/material.dart';

class Destinations {
  const Destinations(this.icon, this.label);
  final IconData icon;
  final String label;
}

const List<Destinations> destinations = <Destinations>[
  Destinations(Icons.inbox, 'Inbox'),
  Destinations(Icons.article_outlined, 'Articles'),
  Destinations(Icons.messenger_outline, 'Messages'),
  Destinations(Icons.group_outlined, 'Group')
];
