import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/product_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// We use [MultiProvider] here to inject the state management classes
    /// at the very top of the widget tree. This ensures that [ProductProvider]
    /// is accessible from any screen within the application.
    return MultiProvider(
      providers: [
        /// Injects the [ProductProvider] instance.
        /// Using [ChangeNotifierProvider] allows listening to changes in the UI.
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        title: 'ShopEasy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        // This is your starting screen
        home: const HomeScreen(),
      ),
    );
  }
}