import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_app/statemanagement/favouriteProvider.dart';
import 'package:ecommerce_app/statemanagement/provider/cart_model.dart';
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
