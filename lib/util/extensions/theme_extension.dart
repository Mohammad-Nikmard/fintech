import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get background => Theme.of(this).colorScheme.surface;
  Color get primaryText => Theme.of(this).colorScheme.primary;
  Color get secondaryText => Theme.of(this).colorScheme.secondary;
  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;
}