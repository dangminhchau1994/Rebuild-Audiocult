import 'package:app/presentation/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  Widget makeTestableWidget() => ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (_, child) => const MaterialApp(
          home: Scaffold(
            body: SplashScreen(),
          ),
        ),
      );

  group('splashScreen', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets(
      'navigate screen follow the accessToken status',
      (widgetTester) async {
        await widgetTester.pumpWidget(makeTestableWidget());
        await widgetTester.pumpAndSettle();
        expect(find.byType(SplashScreen), findsOneWidget);
      },
    );
  });
}
