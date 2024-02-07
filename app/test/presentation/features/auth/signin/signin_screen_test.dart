import 'package:app/core/utils/loading_util.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/presentation/blocs/login/login_bloc.dart';
import 'package:app/presentation/blocs/login/login_cubit.dart';
import 'package:app/presentation/blocs/login/login_cubit_state.dart';
import 'package:app/presentation/blocs/login/login_event.dart';
import 'package:app/presentation/blocs/login/login_state.dart';
import 'package:app/presentation/features/auth/signin/sigin_screen.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockLoginCubit extends MockCubit<LoginCubitState> implements LoginCubit {}

void main() {
  late MockLoginBloc mockLoginBloc;
  late MockLoginCubit mockLoginCubit;
  late MockSharedPreferences mockSharedPreferences;
  final formKey = GlobalKey<FormBuilderState>();

  setUp(() async {
    mockLoginBloc = MockLoginBloc();
    mockLoginCubit = MockLoginCubit();
    mockSharedPreferences = MockSharedPreferences();
    GetIt.I.registerSingletonAsync<SharedPreferences>(
        () async => mockSharedPreferences);
    GetIt.I.registerSingletonAsync<SharePreferencesUtil>(() async {
      final sharedPreferences = await GetIt.I.getAsync<SharedPreferences>();
      return SharePreferencesUtil(sharedPreferences);
    });
    await GetIt.I.allReady();
    LoadingUtil.configLoading();
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
        builder: EasyLoading.init(),
        home: MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(create: (_) => mockLoginBloc),
            BlocProvider<LoginCubit>(create: (_) => mockLoginCubit),
          ],
          child: Scaffold(
            body: FormBuilder(key: formKey, child: const SignInScreen()),
          ),
        ),
      ),
    );
  }

  group('sign in screen widget test', () {
    testWidgets('find all widgets', (widgetTester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginInitial());
      when(() => mockLoginCubit.state).thenReturn(const LoginCubitState());
      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      expect(find.byType(UITextField), findsNWidgets(2));
      expect(find.byType(UICheckBox), findsOneWidget);
      expect(find.byType(UIButton), findsOneWidget);
      expect(find.byType(FormBuilder), findsNWidgets(2));
    });

    testWidgets('should call onFullNameChanged when full name is changed',
        (widgetTester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginInitial());
      when(() => mockLoginCubit.state).thenReturn(const LoginCubitState());
      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      final fullNameTextField = find.byType(UITextField).first;
      await widgetTester.enterText(fullNameTextField, 'John Doe');
      await widgetTester.pumpAndSettle();

      verify(() => mockLoginCubit.onFullNameChanged('John Doe')).called(1);
    });

    testWidgets('should call onPasswordChanged when password is changed',
        (widgetTester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginInitial());
      when(() => mockLoginCubit.state).thenReturn(const LoginCubitState());
      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      final passwordTextField = find.byType(UITextField).at(1);
      await widgetTester.enterText(passwordTextField, 'password');
      await widgetTester.pumpAndSettle();

      verify(() => mockLoginCubit.onPasswordChanged('password')).called(1);
    });

    testWidgets('validation form', (widgetTester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginInitial());
      when(() => mockLoginCubit.state).thenReturn(const LoginCubitState());
      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      final fullNameTextField = find.byType(UITextField).first;
      await widgetTester.enterText(fullNameTextField, 'John Doe');
      await widgetTester.pumpAndSettle();

      final passwordTextField = find.byType(UITextField).at(1);
      await widgetTester.enterText(passwordTextField, 'password');
      await widgetTester.pumpAndSettle();

      final signInButton = find.byType(UIButton);
      await widgetTester.tap(signInButton);
      await widgetTester.pumpAndSettle();

      expect(formKey.currentState!.saveAndValidate(), true);
    });

    testWidgets('show loading when submit signin form', (widgetTester) async {
      when(() => mockLoginBloc.state).thenReturn(LoginLoading());
      when(() => mockLoginCubit.state).thenReturn(const LoginCubitState());
      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      verify(() async => EasyLoading.show()).called(1);
    });
  });
}
