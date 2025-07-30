
import 'package:go_router/go_router.dart';
import 'package:salforge_gate_app/features/auth/pages/splash_screen.dart';
import 'package:salforge_gate_app/features/auth/pages/login_screen.dart';
import 'package:salforge_gate_app/features/auth/pages/forgot_password_screen.dart';
import 'package:salforge_gate_app/features/dashboard/pages/dashboard_screen.dart';
import '../features/userManagement/pages/create_security_user_screen.dart';
import '../features/userManagement/pages/mock_security_user_list_screen.dart';
import '../features/userManagement/pages/property_owner_screen.dart';
import '../features/userManagement/pages/security_house_screen.dart';
import '../features/userManagement/pages/user_management_screen.dart';


final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => DashboardScreen(),
    ),
    GoRoute(
      path: '/user-management',
      builder: (context, state) => const UserManagementScreen(),
    ),
    GoRoute(
      path: '/security-house',
      builder: (context, state) => const SecurityHouseScreen(),
    ),
    GoRoute(
      path: '/property-owners',
      builder: (context, state) => const PropertyOwnersScreen(),
    ),
    GoRoute(
      path: '/create-security-user',
      builder: (context, state) => const CreateSecurityUserScreen(),
    ),
    GoRoute(
      path: '/mock-security-user-list',
      builder: (context, state) => const MockSecurityUserListScreen(),
    ),
  ],
);
