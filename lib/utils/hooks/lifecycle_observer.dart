import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useLifecycleObserver({
  required VoidCallback onPaused,
  required VoidCallback onResumed,
}) =>
    use(_AppLifecycleObserverHook(
      onPaused: onPaused,
      onResumed: onResumed,
    ));

class _AppLifecycleObserverHook extends Hook {
  _AppLifecycleObserverHook({
    required this.onPaused,
    required this.onResumed,
  });

  final VoidCallback onPaused;
  final VoidCallback onResumed;

  @override
  _AppLifecycleObserverHookState createState() =>
      _AppLifecycleObserverHookState(
        onPaused: onPaused,
        onResumed: onResumed,
      );
}

class _AppLifecycleObserverHookState extends HookState
    with WidgetsBindingObserver {
  _AppLifecycleObserverHookState({
    required this.onPaused,
    required this.onResumed,
  });

  final VoidCallback onPaused;
  final VoidCallback onResumed;

  @override
  void initHook() {
    super.initHook();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      onPaused();
    } else if (state == AppLifecycleState.resumed) {
      onResumed();
    }
  }

  @override
  void build(BuildContext context) {}

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
}
