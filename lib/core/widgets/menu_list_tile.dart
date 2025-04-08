import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final String route;

  const MenuListTile({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () => context.push(route),
    );
  }
}
