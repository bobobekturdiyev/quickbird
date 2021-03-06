import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:quickbird/presentation/di/injector.dart';
import 'package:quickbird/presentation/ui/screens/home/home_screen.dart';

const String appTitle = "QuickBird - Instagram Profile";

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (isDesktop) {
    runApp(const Injector(child: MyApp()));

    doWhenWindowReady(() {
      final win = appWindow;
      win.minSize = const Size(410, 540);
      win.alignment = Alignment.center;
      win.title = appTitle;
      win.show();
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: NavigationView(
        content: NavigationBody(
          index: 0,
          children: const [
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
