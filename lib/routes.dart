import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui_kit/screens.dart';

var routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => Home(),
  '/auth': (BuildContext context) => Auth(),
  '/shop': (BuildContext context) => Shop(),
  '/categorise': (BuildContext context) => Categorise(),
  '/wishlist': (BuildContext context) => WishList(),
  '/cart': (BuildContext context) => CartList(),
  '/settings': (BuildContext context) => Settings(),
  '/products': (BuildContext context) => Products(),
  '/checkout': (BuildContext context) => Checkout(),
  '/payment': (BuildContext context) => Payment(),
  '/confirm': (BuildContext context) => ConfirmCheckout()
};
