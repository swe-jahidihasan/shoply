import 'package:flutter/material.dart';

class JCheckbox extends StatelessWidget {
  const JCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.child,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        if (child != null) ...[
          GestureDetector(
            onTap: () => onChanged(!value),
            child: child!,
          ),
        ],
      ],
    );
  }
}