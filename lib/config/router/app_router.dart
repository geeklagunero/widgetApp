import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screens.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreens.name,
      builder: (context, state) => ButtonsScreens(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreens.name,
      builder: (context, state) => CardsScreens(),
    ),
  ],
);
