import 'package:app/core/utils/loading_util.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_bloc.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_cubit.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_cubit_state.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_event.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_state.dart';
import 'package:app/presentation/features/auth/resend_password/resend_password_screen.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockResendPasswordCubit extends MockCubit<ResendPasswordCubitState>
    implements ResendPasswordCubit {}

class MockEasyLoading extends Mock implements LoadingUtil {}

class MocRendPasswordBloc
    extends MockBloc<RendPasswordEvent, ResendPasswordState>
    implements ResendPasswordBloc {}

void main() {
  late MockResendPasswordCubit resendPasswordCubit;
  late MocRendPasswordBloc resendPasswordBloc;
  late MockEasyLoading mockEasyLoading;
  final formKey = GlobalKey<FormBuilderState>();

  setUp(() {
    resendPasswordCubit = MockResendPasswordCubit();
    resendPasswordBloc = MocRendPasswordBloc();
    mockEasyLoading = MockEasyLoading();
  });

  Widget makeTestableWidget() => ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (_, child) => MultiBlocProvider(
          providers: [
            BlocProvider<ResendPasswordCubit>(
              create: (_) => resendPasswordCubit,
            ),
            BlocProvider<ResendPasswordBloc>(
              create: (_) => resendPasswordBloc,
            ),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: FormBuilder(
                key: formKey,
                child: const ResendPasswordScreen(),
              ),
            ),
          ),
        ),
      );

  group('resendPassword', () {
    testWidgets('find all widget', (widgetTester) async {
      when(() => resendPasswordCubit.state)
          .thenReturn(ResendPasswordCubitState());
      when(() => resendPasswordBloc.state).thenReturn(ResendPasswordInitial());

      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      expect(find.byType(FormBuilder), findsOneWidget);
      expect(find.byType(UITextField), findsOneWidget);
      expect(find.byType(UIButton), findsOneWidget);
    });

    testWidgets(
      'should call onSetEmailChanged when email changed',
      (widgetTester) async {
        when(() => resendPasswordCubit.state)
            .thenReturn(ResendPasswordCubitState());
        when(() => resendPasswordBloc.state)
            .thenReturn(ResendPasswordInitial());

        await widgetTester.pumpWidget(makeTestableWidget());
        await widgetTester.pumpAndSettle();

        final textField = find.byType(UITextField);
        await widgetTester.enterText(textField, 'chaudang');

        verify(() => resendPasswordCubit.onSetEmailChanged('chaudang'))
            .called(1);
      },
    );

    testWidgets('validate form', (widgetTester) async {
      when(() => resendPasswordCubit.state)
          .thenReturn(ResendPasswordCubitState());
      when(() => resendPasswordBloc.state).thenReturn(ResendPasswordInitial());

      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      final textField = find.byType(UITextField);
      await widgetTester.enterText(textField, 'chaudang');

      final button = find.byType(UIButton);
      await widgetTester.tap(button);
      await widgetTester.pumpAndSettle();

      expect(formKey.currentState?.saveAndValidate(), true);
    });

    testWidgets(
      'should show easy loading when emit state ResendPasswordLoading',
      (widgetTester) async {
        when(() => resendPasswordCubit.state).thenReturn(
          ResendPasswordCubitState(),
        );
        when(() => resendPasswordBloc.state).thenReturn(
          ResendPasswordLoading(),
        );

        await widgetTester.pumpWidget(makeTestableWidget());
        await widgetTester.pumpAndSettle();

        verify(() => mockEasyLoading.show()).called(1);
      },
    );
  });
}
