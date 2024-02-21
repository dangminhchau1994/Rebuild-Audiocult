import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/presentation/blocs/logout/logout_bloc.dart';
import 'package:app/presentation/blocs/logout/logout_event.dart';
import 'package:app/presentation/blocs/logout/logout_state.dart';
import 'package:app/presentation/blocs/profile/get_profile_bloc.dart';
import 'package:app/presentation/blocs/profile/get_profile_event.dart';
import 'package:app/presentation/blocs/profile/get_profile_state.dart';
import 'package:app/presentation/features/main/main_screen.dart';
import 'package:app/presentation/features/main/widgets/main_drawer.dart';
import 'package:app/presentation/widgets/ui_app_bar.dart';
import 'package:app/presentation/widgets/ui_bottom_bar.dart';
import 'package:app/presentation/widgets/ui_circular_menu.dart';
import 'package:app/presentation/widgets/ui_fab_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../helpers/test_helper.mocks.dart';

class MockGetProfileBloc extends MockBloc<GetProfileEvent, GetProfileState>
    implements GetProfileBloc {}

class MockLogoutBloc extends MockBloc<LogoutEvent, LogoutState>
    implements LogoutBloc {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late MockGetProfileBloc mockGetProfileBloc;
  late MockLogoutBloc mockLogoutBloc;
  late MockSharedPreferences mockSharedPreferences;
  late MockStackRouter mockStackRouter;

  setUp(() async {
    mockStackRouter = MockStackRouter();
    mockGetProfileBloc = MockGetProfileBloc();
    mockLogoutBloc = MockLogoutBloc();
    mockSharedPreferences = MockSharedPreferences();
    GetIt.I.registerSingletonAsync<SharedPreferences>(
        () async => mockSharedPreferences);
    GetIt.I.registerSingletonAsync<SharePreferencesUtil>(() async {
      final sharedPreferences = await GetIt.I.getAsync<SharedPreferences>();
      return SharePreferencesUtil(sharedPreferences);
    });
    await GetIt.I.allReady();
  });

  tearDown(() {
    GetIt.I.unregister<SharedPreferences>();
    GetIt.I.unregister<SharePreferencesUtil>();
  });

  Widget makeTestableWidget() {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        home: StackRouterScope(
          controller: mockStackRouter,
          stateHash: 0,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<GetProfileBloc>(
                create: (context) => mockGetProfileBloc,
              ),
              BlocProvider<LogoutBloc>(
                create: (context) => mockLogoutBloc,
              ),
            ],
            child: const MainScreen(),
          ),
        ),
      ),
    );
  }

  group('mainScreenTest', () {
    testWidgets('should find all widgets', (widgetTester) async {
      when(() => mockGetProfileBloc.state).thenReturn(GetProfileInitial());
      when(() => mockLogoutBloc.state).thenReturn(LogoutInitial());

      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      expect(find.byType(MainDrawer), findsOneWidget);
      expect(find.byType(UIAppbar), findsOneWidget);
      expect(find.byType(UIFabMenu), findsOneWidget);
      expect(find.byType(CircleAvatar), findsOneWidget);
      expect(find.byType(PageView), findsOneWidget);
      expect(find.byType(UICircularMenu), findsOneWidget);
      expect(find.byType(UIBottombar), findsOneWidget);
    });
  });
}
