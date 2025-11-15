import 'package:flutter/material.dart';
import 'js7_home_page.dart';
import 'js7_profile_page.dart';
import 'js7_gallery_page.dart';

class Routes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String gallery = '/gallery';

  static final Map<String, WidgetBuilder> routesMap = {
    home: (context) => const HomePage(),
    profile: (context) => const ProfilePage(),
    gallery: (context) => const GalleryPage(),
  };
}
