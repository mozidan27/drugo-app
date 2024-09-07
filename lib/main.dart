import 'package:drugo/app/drugo_app.dart';
import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getit<CacheHelper>().init();
  runApp(const Drugo());
}
