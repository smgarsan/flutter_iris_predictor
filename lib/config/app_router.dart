import 'package:flutter_iris_predictor/screens/screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => LandingScreen()),
  GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
  GoRoute(path: '/prediction', builder: (context, state) => PredictionScreen()),
]);
