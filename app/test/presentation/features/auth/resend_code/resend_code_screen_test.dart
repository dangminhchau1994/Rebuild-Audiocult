import 'package:app/presentation/blocs/resend_code/resend_code_bloc.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_cubit.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_cubit_state.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_event.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_state.dart';
import 'package:app/presentation/features/auth/resend_password/resend_code_screen.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockResendCodeCubit extends MockCubit<ResendCodeCubitState>
    implements ResendCodeCubit {}

class MockResendCodeBloc extends MockBloc<ResendCodeEvent, ResendCodeState>
    implements ResendCodeBloc {}

void main() {
  late MockResendCodeCubit mockResendCodeCubit;
  late MockResendCodeBloc mockResendCodeBloc;
  final formKey = GlobalKey<FormBuilderState>();

  setUp(() {
    mockResendCodeCubit = MockResendCodeCubit();
    mockResendCodeBloc = MockResendCodeBloc();
  });

  Widget makeTestableWidget() => ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (_, child) => MultiBlocProvider(
          providers: [
            BlocProvider<ResendCodeCubit>(
              create: (_) => mockResendCodeCubit,
            ),
            BlocProvider<ResendCodeBloc>(
              create: (_) => mockResendCodeBloc,
            ),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: FormBuilder(
                key: formKey,
                child: const ResendCodeScreen(),
              ),
            ),
          ),
        ),
      );

  group('resendCode', () {
    testWidgets('find all widgets', (widgetTester) async {
      when(() => mockResendCodeCubit.state).thenReturn(ResendCodeCubitState());
      when(() => mockResendCodeBloc.state).thenReturn(ResendCodeInitial());

      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      expect(find.byType(FormBuilder), findsNWidgets(2));
      expect(find.byType(Text), findsNWidgets(6));
      expect(find.byType(UITextField), findsOneWidget);
      expect(find.byType(RichText), findsNWidgets(8));
      expect(find.byType(UIButton), findsOneWidget);
    });

    testWidgets(
      'should call setCode when code changed',
      (widgetTester) async {
        when(() => mockResendCodeCubit.state)
            .thenReturn(ResendCodeCubitState());
        when(() => mockResendCodeBloc.state).thenReturn(ResendCodeInitial());

        await widgetTester.pumpWidget(makeTestableWidget());
        await widgetTester.pumpAndSettle();

        await widgetTester.enterText(find.byType(UITextField), '123456');
        verify(() => mockResendCodeCubit.setCode('123456')).called(1);
      },
    );

    testWidgets('validate form', (widgetTester) async {
      when(() => mockResendCodeCubit.state).thenReturn(ResendCodeCubitState());
      when(() => mockResendCodeBloc.state).thenReturn(ResendCodeInitial());

      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pumpAndSettle();

      final codeInput = find.byType(UITextField);
      await widgetTester.enterText(codeInput, '123');
      await widgetTester.pumpAndSettle();

      final resendButton = find.byType(UIButton);
      await widgetTester.tap(resendButton);
      await widgetTester.pumpAndSettle();

      expect(formKey.currentState!.validate(), true);
    });
  });
}
