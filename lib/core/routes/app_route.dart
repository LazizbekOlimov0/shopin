import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopin/screens/cart.dart';
import 'package:shopin/screens/checkout.dart';
import 'package:shopin/screens/reset_password.dart';
import 'package:shopin/screens/sign_in_up.dart';

class AppRoutes {
  static final GoRouter goRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/welcome',
        builder: (BuildContext context, GoRouterState state) {
          return SignInUpPage();
        },
        routes: [
          GoRoute(
            path: 'signInUp',
            builder: (BuildContext context, GoRouterState state) {
              return ResetPassword();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/product',
        builder: (BuildContext context, GoRouterState state) {
          return CartPage();
        },
        routes: [
          GoRoute(
            path: 'cart',
            builder: (BuildContext context, GoRouterState state) {
              return CheckoutPage();
            },
            routes: [GoRoute(path: 'checkOutPayment')],
          ),
        ],
      ),
    ],
  );
}
