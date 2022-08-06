import 'package:e_learning/Helper/Provider/user_provider.dart';
import 'package:e_learning/Helper/style.dart';
import 'package:e_learning/Screen/Splash/splash.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Screen/Splash/introslider.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts_licence/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context)=>UserProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Learning',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                titleTextStyle: GoogleFonts.ptSerif(color: primary),
                iconTheme: IconThemeData(color: primary),
                actionsIconTheme: IconThemeData(color: primary)),
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        GoogleFonts.ptSerif(color: primary)))),
            textTheme: TextTheme(
              titleLarge: GoogleFonts.ptSerif(color: Colors.black),
              titleMedium: GoogleFonts.ptSerif(color: Colors.black),
              titleSmall: GoogleFonts.ptSerif(color: Colors.black),
              labelSmall: GoogleFonts.ptSerif(color: Colors.black),
              labelLarge: GoogleFonts.ptSerif(color: Colors.black),
              labelMedium: GoogleFonts.ptSerif(color: Colors.black),
              displayMedium: GoogleFonts.ptSerif(color: Colors.black),
              displaySmall: GoogleFonts.ptSerif(
                color: Colors.black,
              ),
              displayLarge: GoogleFonts.ptSerif(color: Colors.black),
            ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primary)
            )
          )


        ),
        // home: DashBoardPage(),
        home: SplashScreen(),
      ),
    );
  }
}
