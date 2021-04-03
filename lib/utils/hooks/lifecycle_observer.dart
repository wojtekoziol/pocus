import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useLifecycleObserver({
  required VoidCallback onInactive,
  required VoidCallback onResumed,
}) =>
    use(_AppLifecycleObserverHook(
      onInactive: onInactive,
      onResumed: onResumed,
    ));

class _AppLifecycleObserverHook extends Hook {
  _AppLifecycleObserverHook({
    required this.onInactive,
    required this.onResumed,
  });

  final VoidCallback onInactive;
  final VoidCallback onResumed;

  @override
  _AppLifecycleObserverHookState createState() =>
      _AppLifecycleObserverHookState(
        onInactive: onInactive,
        onResumed: onResumed,
      );
}

class _AppLifecycleObserverHookState extends HookState
    with WidgetsBindingObserver {
  _AppLifecycleObserverHookState({
    required this.onInactive,
    required this.onResumed,
  });

  final VoidCallback onInactive;
  final VoidCallback onResumed;

  @override
  void initHook() {
    super.initHook();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      onInactive();
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
