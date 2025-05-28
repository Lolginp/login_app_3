

import 'package:go_router/go_router.dart';
import 'package:login_app_3/Presentation/Screens/home.dart';
import 'package:login_app_3/Presentation/Screens/login.dart';

final appRouter = GoRouter(
initialLocation: '/login',
routes: [
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(userName: state.extra as String),
  ),
  GoRoute(
    name: 'Login',
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  
  )
]
);