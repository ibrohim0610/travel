import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_login/SignUp/presentation/pages/create_pin.dart';
import 'package:travel_login/SignUp/presentation/pages/entry_blank.dart';
import 'package:travel_login/SignUp/presentation/pages/profile_blank.dart';
import 'package:travel_login/travel_onboarding/presentation/pages/onboarding_view.dart';

GoRouter router = GoRouter(
  initialLocation: '/entry_blank',
  routes: [
    GoRoute(
      path: '/entry_blank',
      builder:(context ,state)=>EntryBlank(),
    ),
    GoRoute(
      path: '/create_pin',
      builder:(context ,state)=>CreatePin(),
    ),
    GoRoute(
      path: '/profile_blank',
      builder:(context ,state)=>ProfileBlank(),
    ),
],
);

void main(){
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
