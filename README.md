# Custom Scroll Package

A custom scrollbar with SingleChildScrollView for web and mobile.

## Usage

```dart
import 'package:custom_scroll_package/custom_scroll_package.dart';

CustomScrollbarWithSingleChildScrollView(
  controller: ScrollController(),
  scrollDirection: Axis.vertical,
  child: Column(
    children: [...],
  ),
);
