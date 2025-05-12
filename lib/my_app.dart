import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopin/screens/cart.dart';
import 'package:shopin/screens/checkout.dart';
import 'package:shopin/screens/empty_cart.dart';
import 'package:shopin/screens/product.dart';
import 'package:shopin/screens/recover_account.dart';
import 'package:shopin/screens/reset_password.dart';
import 'package:shopin/screens/shipping_address.dart';
import 'package:shopin/screens/sign_in_up.dart';
import 'package:shopin/screens/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: goRouter);
  }
}

final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => WelcomePage(),
    ),
    GoRoute(
      path: '/signInUp',
      builder: (BuildContext context, GoRouterState state) => SignInUpPage(),
    ),
    GoRoute(
      path: '/resetPassword',
      builder: (BuildContext context, GoRouterState state) => ResetPassword(),
    ),
    GoRoute(
      path: '/recoverAccount',
      builder: (BuildContext context, GoRouterState state) => RecoverAccount(),
    ),
    GoRoute(
      path: '/product',
      builder: (BuildContext context, GoRouterState state) => ProductPage(),
    ),
    GoRoute(
      path: '/cart',
      builder: (BuildContext context, GoRouterState state) => CartPage(),
    ),
    GoRoute(
      path: '/emptyCart',
      builder: (BuildContext context, GoRouterState state) => EmptyCart(),
    ),
    GoRoute(
      path: '/shipping',
      builder: (BuildContext context, GoRouterState state) => ShippingPage(),
    ),
    GoRoute(
      path: '/checkOutPayment',
      builder: (BuildContext context, GoRouterState state) => CheckoutPage(),
    ),
  ],
);
