import 'package:flutter/material.dart';

class AppDropdownformfield extends StatelessWidget {
  const AppDropdownformfield({
    super.key,
    required this.label,
    this.filled = true,
    this.isPassword = false,
    this.icon,
    required this.items,
  });

  final String label;
  final bool filled;
  final bool isPassword;
  final Widget? icon;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      width: 100,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          filled: filled,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        value: items.first, // Default value
        items: items
            .map((code) => DropdownMenuItem<String>(
          value: code,
          child: Text(code),
        ))
            .toList(),
        onChanged: (value) {
          // handle selection
        },
      ),
    );
  }
}
