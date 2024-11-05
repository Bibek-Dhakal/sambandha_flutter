import 'package:flutter/material.dart';

import '../utils/network_helper.dart';

void listenToConnectivity({
  required GlobalKey<ScaffoldMessengerState> scaffoldKey,
  required BuildContext context,
}) {
  try {
    NetworkHelper.observeNetwork(scaffoldKey, context);
  } catch (e) {
    debugPrint('Error: $e');
  }
}
