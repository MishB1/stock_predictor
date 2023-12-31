import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stock_predictor/firebase_options.dart';
import 'package:stock_predictor/screens/LoginPage/LoginPage.dart';
import 'package:stock_predictor/screens/homeScreen/homeScreen.dart';
import 'package:stock_predictor/symbols/company_symbols.dart';
import 'package:stock_predictor/globals/globals.dart' as globals;

class Auth extends StatelessWidget {
  const Auth({super.key});

  Future<User?> checkUserStatus() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    final companySymbols = await getCompanySymbols();

    globals.companies = companySymbols;

    globals.createSymbolsMap(companySymbols);

    final user = FirebaseAuth.instance.currentUser;

    globals.user = user;

    return user;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: checkUserStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return snapshot.data != null
                ? HomeScreen(
                    pageIndex: 2,
                  )
                : LoginPage();
          }
          return Scaffold(
            backgroundColor: Colors.black,
          );
        });
  }
}
