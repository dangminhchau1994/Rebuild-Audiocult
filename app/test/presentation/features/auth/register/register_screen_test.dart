import 'package:app/domain/entities/roles_entity.dart';
import 'package:app/presentation/blocs/get_places/get_places_bloc.dart';
import 'package:app/presentation/blocs/get_places/get_places_event.dart';
import 'package:app/presentation/blocs/get_places/get_places_state.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_event.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_state.dart';
import 'package:app/presentation/blocs/register/register_cubit.dart';
import 'package:app/presentation/blocs/register/register_cubit_state.dart';
import 'package:app/presentation/features/auth/register/register_screen.dart';
import 'package:app/presentation/features/auth/register/widgets/resigter_term.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_dropdown.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRegisterCubit extends MockCubit<RegisterCubitState>
    implements RegisterCubit {}

class MockGetPlacesBloc extends MockBloc<GetPlacesEvent, GetPlacesState>
    implements GetPlacesBloc {}

class MockGetRolesBloc extends MockBloc<GetRolesEvent, GetRolesState>
    implements GetRolesBloc {}

void main() {
  group('RegisterScreen Tests', () {
    late MockRegisterCubit mockRegisterCubit;
    late MockGetPlacesBloc mockGetPlacesBloc;
    late MockGetRolesBloc mockGetRolesBloc;

    const tRoleEntity = RolesEntity(
      data: [
        RoleEntity(userGroupId: "1", title: 'title'),
        RoleEntity(userGroupId: "1", title: 'title'),
        RoleEntity(userGroupId: "1", title: 'title'),
      ],
    );

    setUp(() {
      mockRegisterCubit = MockRegisterCubit();
      mockGetPlacesBloc = MockGetPlacesBloc();
      mockGetRolesBloc = MockGetRolesBloc();
    });

    Widget makeTestableWidget() => ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          builder: (_, child) => MaterialApp(
            home: MultiBlocProvider(
              providers: [
                BlocProvider<RegisterCubit>(create: (_) => mockRegisterCubit),
                BlocProvider<GetPlacesBloc>(create: (_) => mockGetPlacesBloc),
                BlocProvider<GetRolesBloc>(create: (_) => mockGetRolesBloc),
              ],
              child: const Scaffold(body: RegisterScreen()),
            ),
          ),
        );

    testWidgets('renders correctly and contains key widgets', (
      WidgetTester tester,
    ) async {
      //arrange
      when(() => mockGetRolesBloc.state)
          .thenReturn(GetRolesEmpty()); // Assuming an empty list for simplicity
      when(() => mockGetPlacesBloc.state).thenReturn(
          GetPlacesInitial()); // Assuming an empty list for simplicity
      when(() => mockRegisterCubit.state).thenReturn(
          const RegisterCubitState()); // Assuming an empty list for simplicity

      //act
      await tester.pumpWidget(makeTestableWidget());
      await tester.pump();

      //assert
      expect(find.byType(FormBuilder), findsOneWidget);
      expect(find.byType(UITextField), findsWidgets);
      expect(find.byType(UICheckBox), findsOneWidget);
      expect(find.byType(UIButton), findsOneWidget);
      expect(find.byType(RegisterTerm), findsOneWidget);
    });

    testWidgets(
      'should show progress indicator when state is loading',
      (widgetTester) async {
        //arrange
        when(() => mockGetRolesBloc.state).thenReturn(
          GetRolesLoading(),
        );
        when(() => mockGetPlacesBloc.state).thenReturn(
          GetPlacesInitial(),
        );
        when(() => mockRegisterCubit.state).thenReturn(
          const RegisterCubitState(),
        );

        //act
        await widgetTester.pumpWidget(makeTestableWidget());
        await widgetTester.pump();

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets('return UIDropdown when state get roles loaded was emitted',
        (widgetTester) async {
      //arrange
      when(() => mockGetRolesBloc.state).thenReturn(
        const GetRolesLoaded(data: tRoleEntity),
      );
      when(() => mockGetPlacesBloc.state).thenReturn(
        GetPlacesInitial(),
      );
      when(() => mockRegisterCubit.state).thenReturn(
        const RegisterCubitState(),
      );

      //act
      await widgetTester.pumpWidget(makeTestableWidget());
      await widgetTester.pump();

      //assert
      expect(find.byType(UIDropDown), findsOneWidget);
    });
  });
}
