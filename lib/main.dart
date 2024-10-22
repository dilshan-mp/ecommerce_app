import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_app/statemanagement/provider/addCart_provider.dart';
import 'package:ecommerce_app/statemanagement/provider/favouriteProvider.dart';
import 'package:ecommerce_app/statemanagement/provider/cart_provider.dart';
import 'package:ecommerce_app/views/firstPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
        ChangeNotifierProvider(create: (context) => CartModel()),
        ChangeNotifierProvider(create: (context) => AddtoCartProvider()),
      ],
      child: const MaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}
