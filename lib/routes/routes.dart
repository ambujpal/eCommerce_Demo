import 'package:ecommerce_demo/bindings/cart_bindings.dart';
import 'package:ecommerce_demo/bindings/home_bindings.dart';
import 'package:ecommerce_demo/bindings/login_bindings.dart';
import 'package:ecommerce_demo/bindings/product_details_bindings.dart';
import 'package:ecommerce_demo/bindings/productlisting_bindings.dart';
import 'package:ecommerce_demo/bindings/profile_bindings.dart';
import 'package:ecommerce_demo/bindings/signup_bindings.dart';
import 'package:ecommerce_demo/bindings/splash_bindings.dart';
import 'package:ecommerce_demo/presentation/cart_page.dart';
import 'package:ecommerce_demo/presentation/home_page.dart';
import 'package:ecommerce_demo/presentation/login_page.dart';
import 'package:ecommerce_demo/presentation/poduct_listing_page.dart';
import 'package:ecommerce_demo/presentation/product_details_page.dart';
import 'package:ecommerce_demo/presentation/profile_page.dart';
import 'package:ecommerce_demo/presentation/signup_page.dart';
import 'package:ecommerce_demo/presentation/splash_page.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: AppRoutesName.splashPage,
    page: () => const SplashPage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: SplashBindings(),
  ),
  GetPage(
    name: AppRoutesName.loginPage,
    page: () => const LoginPage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: LoginBindings(),
  ),
  GetPage(
    name: AppRoutesName.signupPage,
    page: () => const SignupPage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: SignupBindings(),
  ),
  GetPage(
    name: AppRoutesName.homePage,
    page: () => const HomePage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: HomeBindings(),
  ),
  GetPage(
    name: AppRoutesName.cartPage,
    page: () => const CartPage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: CartBindings(),
  ),
  GetPage(
    name: AppRoutesName.profilePage,
    page: () => const ProfilePage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: ProfileBindings(),
  ),
  GetPage(
    name: AppRoutesName.productListPage,
    page: () => const ProductListingPage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: ProductlistingBindings(),
  ),
  GetPage(
    name: AppRoutesName.productDetailsPage,
    page: () => const ProductDetailsPage(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 400),
    binding: ProductDetailsBindings(),
  ),
];
