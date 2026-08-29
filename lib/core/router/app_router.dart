import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoply/features/authentication/presentation/views/pages/account_create_success_screen.dart';
import 'package:shoply/features/authentication/presentation/views/pages/email_send_success_screen.dart';
import 'package:shoply/features/authentication/presentation/views/pages/forgot_password_screen.dart';
import 'package:shoply/features/authentication/presentation/views/pages/sign_in_screen.dart';
import 'package:shoply/features/authentication/presentation/views/pages/sign_up_screen.dart';
import 'package:shoply/features/authentication/presentation/views/pages/verify_email_address_screen.dart';
import 'package:shoply/features/cart/presentation/views/pages/cart_screen.dart';
import 'package:shoply/features/cart/presentation/views/pages/check_out_screen.dart';
import 'package:shoply/features/cart/presentation/views/pages/payment_success_screen.dart';
import 'package:shoply/features/home/presentation/views/pages/home_screen.dart';
import 'package:shoply/features/main_bottom_nav/presentation/views/pages/main_bottom_nav_screen.dart';
import 'package:shoply/features/products/presentation/views/pages/product_details_screen.dart';
import 'package:shoply/features/products/presentation/views/pages/product_view_screen.dart';
import 'package:shoply/features/profile/presentation/views/pages/add_new_address_screen.dart';
import 'package:shoply/features/profile/presentation/views/pages/edit_profile_screen.dart';
import 'package:shoply/features/profile/presentation/views/pages/my_order_screen.dart';
import 'package:shoply/features/profile/presentation/views/pages/profile_address_screen.dart';
import 'package:shoply/features/profile/presentation/views/pages/profile_change_name_screen.dart';
import 'package:shoply/features/profile/presentation/views/pages/profile_screen.dart';
import 'package:shoply/features/splash/presentation/views/pages/onboarding_screen.dart';
import 'package:shoply/features/splash/presentation/views/pages/splash_screen.dart';
import 'package:shoply/features/store/presentation/views/pages/brand_product_screen.dart';
import 'package:shoply/features/store/presentation/views/pages/brand_screen.dart';
import 'package:shoply/features/store/presentation/views/pages/store_screen.dart';
import 'package:shoply/features/wishlist/presentation/views/pages/wishlist_screen.dart';

/// App router configuration
/// Provides centralized routing with GoRouter
class AppRouter {
  AppRouter._(); // Private constructor to prevent instantiation

  /// Create and configure the router
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: '/main-bottom-nav',
    debugLogDiagnostics: false,
    routes: [
      // splash
      GoRoute(
        path: "/",
        name: "splash",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/onboarding",
        name: "onboarding",
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: "/signIn",
        name: "signIn",
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: "/signUp",
        name: "signUp",
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: "/forgot-password",
        name: "forgot-password",
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: "/email-send-success",
        name: "email-send-success",
        builder: (context, state) => const EmailSendSuccessScreen(),
      ),
      GoRoute(
        path: "/verify-email-address",
        name: "verify-email-address",
        builder: (context, state) => const VerifyEmailAddressScreen(),
      ),
      GoRoute(
        path: "/account-create-success",
        name: "account-create-success",
        builder: (context, state) => const AccountCreateSuccessScreen(),
      ),
      GoRoute(
        path: "/main-bottom-nav",
        name: "main-bottom-nav",
        builder: (context, state) => const MainBottomNavScreen(),
      ),
      GoRoute(
        path: "/home",
        name: "home",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/product-details",
        name: "product-details",
        builder: (context, state) => const ProductDetailsScreen(),
      ),
      GoRoute(
        path: "/product-view",
        name: "product-view",
        builder: (context, state) => const ProductViewScreen(),
      ),
      GoRoute(
        path: "/cart",
        name: "cart",
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: "/check-out",
        name: "check-out",
        builder: (context, state) => const CheckOutScreen(),
      ),
      GoRoute(
        path: "/payment-success",
        name: "payment-success",
        builder: (context, state) => const PaymentSuccessScreen(),
      ),
      GoRoute(
        path: "/store",
        name: "store",
        builder: (context, state) => const StoreScreen(),
      ),
      GoRoute(
        path: "/brand",
        name: "brand",
        builder: (context, state) => const BrandScreen(),
      ),
      GoRoute(
        path: "/brand-products",
        name: "brand-products",
        builder: (context, state) => const BrandProductScreen(),
      ),
      GoRoute(
        path: "/wishlist",
        name: "wishlist",
        builder: (context, state) => const WishlistScreen(),
      ),
      GoRoute(
        path: "/profile",
        name: "profile",
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: "/edit-profile",
        name: "edit-profile",
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: "/profile-change-name",
        name: "profile-change-name",
        builder: (context, state) => const ProfileChangeNameScreen(),
      ),
      GoRoute(
        path: "/profile-address",
        name: "profile-address",
        builder: (context, state) => const ProfileAddressScreen(),
      ),
      GoRoute(
        path: "/add-new-address",
        name: "add-new-address",
        builder: (context, state) => const AddNewAddressScreen(),
      ),
      GoRoute(
        path: "/my-order",
        name: "my-order",
        builder: (context, state) => const MyOrderScreen(),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Error: ${state.error}'))),
  );

  /// Navigate to a route by path
  static void go(String path) {
    _router.go(path);
  }

  /// Navigate to a route by name
  static void goNamed(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
  }) {
    _router.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  /// Push a route
  static Future<T?> push<T extends Object?>(String path, {Object? extra}) {
    return _router.push<T>(path, extra: extra);
  }

  /// Push a named route
  static Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
  }) {
    return _router.pushNamed<T>(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  /// Pop the current route
  static void pop<T extends Object?>([T? result]) {
    _router.pop<T>(result);
  }

  /// Check if can pop
  static bool canPop() {
    return _router.canPop();
  }
}
