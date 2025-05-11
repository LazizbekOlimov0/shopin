import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopin/screens/cart.dart';
import 'package:shopin/screens/checkout.dart';
import 'package:shopin/screens/product.dart';
import 'package:shopin/screens/reset_password.dart';
import 'package:shopin/screens/sign_in_up.dart';
import 'package:shopin/screens/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}


final GoRouter goRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return WelcomePage();
        },
        routes: [
          GoRoute(
            path: 'signInUp',
            builder: (BuildContext context, GoRouterState state) {
              return SignInUpPage();
            },
            routes: [
              GoRoute(
                path: 'resetPassword',
                builder: (BuildContext context, GoRouterState state) {
                  return ResetPassword();
                },
              ),
            ]
          ),
        ],
      ),
      GoRoute(
        path: '/product',
        builder: (BuildContext context, GoRouterState state) {
          return ProductPage();
        },
        routes: [
          GoRoute(
            path: 'cart',
            builder: (BuildContext context, GoRouterState state) {
              return CartPage();
            },
            routes: [
              GoRoute(
                path: 'checkOutPayment',
                builder: (BuildContext context, GoRouterState state){
                  return CheckoutPage();
                }
              )
            ],
          ),
        ],
      ),
    ],
  );
