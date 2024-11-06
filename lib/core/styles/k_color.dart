import 'package:flutter/material.dart';

// Color
Color getPrimaryColor(BuildContext context) {
  return Theme.of(context).primaryColor;
}

Color getHighlightColor(BuildContext context) {
  return Theme.of(context).highlightColor;
}

Color getHoverColor(BuildContext context) {
  return Theme.of(context).hoverColor;
}

Color getHintColor(BuildContext context) {
  return Theme.of(context).hintColor;
}

Color getBackgroundColor(BuildContext context) {
  return Theme.of(context).colorScheme.surface;
}
