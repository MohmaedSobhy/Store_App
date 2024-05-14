import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDQ8GoKu3NjexbUpS5c_YikzczKyBL1HWA",
          appId: "1:918151730282:android:a836fe95ac2503af752613",
          messagingSenderId: "918151730282",
          projectId: "store-app-e31c6"));
  runApp(const StoreApp());
}
