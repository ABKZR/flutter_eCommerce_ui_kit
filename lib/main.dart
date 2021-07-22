import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui_kit/blocks/block.dart';
import 'package:flutter_ecommerce_ui_kit/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ecommerce_ui_kit/localizations.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Locale locale = Locale('en');
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthBlock>.value(value: AuthBlock()),
      ChangeNotifierProvider<CategoriesBlock>.value(value: CategoriesBlock()),
      ChangeNotifierProvider<ProductsBlock>.value(value: ProductsBlock()),
      ChangeNotifierProvider<CartBlock>.value(value: CartBlock()),
      ChangeNotifierProvider<PaymentBlock>.value(value: PaymentBlock()),
      ChangeNotifierProvider<OrderBlock>.value(value: OrderBlock())
  ],
    child: MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrange.shade500,
          accentColor: Colors.lightBlue.shade900,
          fontFamily: locale.languageCode == 'ar' ? 'Dubai' : 'Lato'),
      initialRoute: '/',
      routes: routes,
    ),
  ));
}
