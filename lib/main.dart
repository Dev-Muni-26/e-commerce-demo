import 'package:flutter/material.dart';

import 'app.dart';

/// Application entry point. Initializes and runs the root [App] widget.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
