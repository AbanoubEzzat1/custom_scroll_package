
# Custom Scrollbar Package
A flexible and customizable scrollbar widget designed for Flutter web and mobile applications, supporting multiple input devices such as touch, mouse, and stylus. This package provides an enhanced Scrollbar for smooth and responsive scrolling across platforms.

# Features
Custom Scrollbar Package
A flexible and customizable scrollbar widget designed for Flutter web and mobile applications, supporting multiple input devices such as touch, mouse, and stylus. This package provides an enhanced Scrollbar for smooth and responsive scrolling across platforms.

Features

Customizable scrollbar: Adjust thumb visibility, thickness, and radius.
Supports multiple input devices: touch, mouse, stylus, etc.
Cross-platform compatibility: Works seamlessly on both Flutter web and mobile platforms.
Easy integration: Simple to add to any existing scroll view.
Installation
To use this package, add the following line to the dependencies section of your pubspec.yaml file:


```yaml
dependencies:
  custom_scroll_package: ^1.0.0
```
Then install the package by running:
```bash
flutter pub get
```

# Usage
Here's an example of how to use the CustomScrollbar widget in your Flutter app:
```dart
import 'package:flutter/material.dart';
import 'package:custom_scroll_package/custom_scroll_package.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Scrollbar Example')),
        body: CustomScrollbar(
          child: Column(
            children: List.generate(50, (index) => Text('Item $index')),
          ),
        ),
      ),
    );
  }
}
```
# Parameters
controller: (Optional) A ScrollController to manage the scroll behavior.
child: The widget that will be placed inside the scroll view.
scrollDirection: (Optional) Defines the scroll direction. Can be Axis.vertical or Axis.horizontal. The default is Axis.vertical.
thumbVisibility: (Optional) Specifies if the scrollbar thumb should always be visible. The default is true.
thickness: (Optional) Sets the thickness of the scrollbar thumb. The default is 8.0.
radius: (Optional) Configures the radius of the scrollbar corners. The default is Radius.circular(8.0).

# Custom Scroll Behavior
The package introduces a custom scroll behavior to ensure compatibility with different input devices, such as mouse, touch, and stylus:
```dart
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
```

dependencies:
  custom_scroll_package: ^1.0.0

Then install the package by running:
flutter pub get

Usage
Here's an example of how to use the CustomScrollbar widget in your Flutter app:
```dart
import 'package:flutter/material.dart';
import 'package:custom_scroll_package/custom_scroll_package.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Scrollbar Example')),
        body: CustomScrollbar(
          child: Column(
            children: List.generate(50, (index) => Text('Item $index')),
          ),
        ),
      ),
    );
  }
}
```
Parameters
controller: (Optional) A ScrollController to manage the scroll behavior.
child: The widget that will be placed inside the scroll view.
scrollDirection: (Optional) Defines the scroll direction. Can be Axis.vertical or Axis.horizontal. The default is Axis.vertical.
thumbVisibility: (Optional) Specifies if the scrollbar thumb should always be visible. The default is true.
thickness: (Optional) Sets the thickness of the scrollbar thumb. The default is 8.0.
radius: (Optional) Configures the radius of the scrollbar corners. The default is Radius.circular(8.0).

Custom Scroll Behavior
The package introduces a custom scroll behavior to ensure compatibility with different input devices, such as mouse, touch, and stylus:
```dart
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
```

