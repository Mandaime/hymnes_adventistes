import 'package:flutter/material.dart';
import 'package:hymnes_adventistes/src/extensions/extensions.dart';
import 'package:hymnes_adventistes/src/extensions/theme.dart';

import '../utils/decorations.dart';

class Box extends StatelessWidget {
  final bool? tiny;
  final Widget? child;
  const Box({Key? key, this.tiny, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: Decorations.circularRadius(22)),
      child: Container(
        height: tiny ?? false ? 100 : context.screenHeight / 2,
        width: tiny ?? false ? 100 : null,
        decoration: Decorations.decorateBox(
          radius: 22,
          color: context.colorScheme.primary,
        ),
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }

  factory Box.tiny({Widget? child}) => Box(tiny: true, child: child);
}
