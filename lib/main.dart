import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:darrebni/app/my_app.dart';
import 'package:darrebni/app/my_app_controller.dart';
import 'package:darrebni/core/data/reposotories/shared_preference.dart';
import 'package:darrebni/core/services/cart_service.dart';
import 'package:darrebni/core/services/connectivityservice.dart';
import 'package:darrebni/core/services/location_service.dart';
import 'package:darrebni/core/services/notification_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//SharedPreferences? globalSharedPreferenc;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //globalSharedPreferenc = await SharedPreferences.getInstance();
  await Get.putAsync<SharedPreferences>(() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  });

  Get.put(SharedPreferenceRepositry());
  //Get.put(CartService());
  Get.put(LocationService());
  Get.put(ConnectivityService());
  Get.put(MyAppController());

  // try {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  //
  //   Get.put(NotificationService());
  // } catch (e) {
  //   print(e);
  // }

  runApp(const MyApp());
}