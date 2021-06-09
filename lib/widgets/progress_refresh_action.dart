import 'package:flutter/material.dart';

class ProgressRefreshAction extends StatelessWidget {
  final bool isLoading;
  final Function() onPressed;

  ProgressRefreshAction({
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      final theme = Theme.of(context);
      final iconTheme =
          theme.appBarTheme.actionsIconTheme ?? theme.primaryIconTheme;
      return GestureDetector(
        onTap: onPressed,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              width: iconTheme.size ?? 24,
              height: iconTheme.size ?? 24,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    iconTheme.color ?? Colors.white),
              ),
            ),
          ),
        ]),
      );
    }
    return IconButton(
      icon: Icon(
        Icons.refresh,
      ),
      onPressed: onPressed,
    );
  }
}