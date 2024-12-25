import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_stream/view/auth/screens/login_screen.dart';
import 'package:movie_stream/view/auth/providers/auth_provider.dart';
import 'package:movie_stream/view/home/providers/landing_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LandingProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider( )),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie Streaming',
        darkTheme: ThemeData(
          brightness: Brightness.dark, // Dark theme
          primarySwatch: Colors.deepOrange,
        ),
        themeMode: ThemeMode.dark, // Choose theme mode
        theme: ThemeData(
          textTheme: GoogleFonts.figtreeTextTheme(Theme.of(context).textTheme),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
