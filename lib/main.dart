import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:seed/injection.dart' as di;

import 'presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.configureInjection(Environment.prod);

  runApp(AppWidget());
}