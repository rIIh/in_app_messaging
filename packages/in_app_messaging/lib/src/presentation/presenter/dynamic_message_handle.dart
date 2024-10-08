import 'dart:async';

import 'package:flutter/widgets.dart';
import '../../../in_app_messaging.dart';

abstract class DynamicMessageHandle {
  final MessageContext context;

  DynamicMessageHandle({required this.context});

  FutureOr<bool> canShow(BuildContext context);

  Future<void> onShow(BuildContext context, [NavigatorState? navigator]);
}
