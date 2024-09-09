library custom_scroll_package;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A custom scrollable widget with an enhanced scrollbar for Flutter web and mobile.
///
/// This widget provides a [Scrollbar] that works with various pointer devices
/// like touch, mouse, and stylus, making it ideal for Flutter web and mobile applications.
class CustomScrollbar extends StatelessWidget {
  /// The [ScrollController] to control the scrolling behavior. If not provided, a default controller will be used.
  final ScrollController? controller;

  /// The child widget to be displayed inside the scrollable area.
  final Widget child;

  /// The scroll direction of the [SingleChildScrollView]. Defaults to vertical scrolling.
  final Axis scrollDirection;

  /// Visibility of the scrollbar's thumb. Defaults to `true`.
  final bool thumbVisibility;

  /// Thickness of the scrollbar thumb. Defaults to `8.0`.
  final double thickness;

  /// The radius of the scrollbar's corners. Defaults to a circular radius of `8.0`.
  final Radius radius;

  const CustomScrollbar({
    this.controller,
    required this.child,
    this.scrollDirection = Axis.vertical,
    this.thumbVisibility = true,
    this.thickness = 8.0,
    this.radius = const Radius.circular(8.0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = controller ?? ScrollController();
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: Scrollbar(
        controller: scrollController,
        thumbVisibility: thumbVisibility,
        thickness: thickness,
        radius: radius,
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: scrollDirection,
          child: child,
        ),
      ),
    );
  }
}

/// Custom scroll behavior to allow smooth scrolling across different pointer devices.
///
/// This scroll behavior supports touch, mouse, stylus, and unknown pointer devices.
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
