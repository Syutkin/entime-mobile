import 'package:flutter/material.dart';

/// Scrolls lists to end
Future<void> scrollToEnd(ScrollController scrollController) async {
  await scrollController.animateTo(
    scrollController.position.maxScrollExtent,
    duration: const Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
  );
}

/// Position of screen tap
// RelativeRect? getButtonMenuPosition(BuildContext buildContext) {
//   final bar = buildContext.findRenderObject() as RenderBox?;
//   final overlay =
//   Overlay.of(buildContext).context.findRenderObject() as RenderBox?;
//   if (bar != null && overlay != null) {
//     final position = RelativeRect.fromRect(
//       Rect.fromPoints(
//         bar.localToGlobal(
//           bar.size.bottomRight(Offset.zero),
//           ancestor: overlay,
//         ),
//         bar.localToGlobal(
//           bar.size.bottomRight(Offset.zero),
//           ancestor: overlay,
//         ),
//       ),
//       Offset.zero & overlay.size,
//     );
//     return position;
//   } else {
//     return null;
//   }
// }
