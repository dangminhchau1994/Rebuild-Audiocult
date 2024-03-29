import 'dart:io';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/constants/app_pref_key.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/utils/share_preferences_util.dart';
import 'package:app/core/utils/validation_util.dart';
import 'package:app/data/models/select_model.dart';
import 'package:app/di/inject_container.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/usecases/get_place_detail_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/blocs/get_places/get_places_bloc.dart';
import 'package:app/presentation/blocs/get_places/get_places_event.dart';
import 'package:app/presentation/blocs/get_places/get_places_state.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_state.dart';
import 'package:app/presentation/blocs/register/register_bloc.dart';
import 'package:app/presentation/blocs/register/register_cubit.dart';
import 'package:app/presentation/blocs/register/register_cubit_state.dart';
import 'package:app/presentation/blocs/register/register_event.dart';
import 'package:app/presentation/blocs/register/register_state.dart';
import 'package:app/presentation/features/auth/register/widgets/register_search.dart';
import 'package:app/presentation/features/auth/register/widgets/resigter_term.dart';
import 'package:app/presentation/widgets/ui_button.dart';
import 'package:app/presentation/widgets/ui_checkbox.dart';
import 'package:app/presentation/widgets/ui_dropdown.dart';
import 'package:app/presentation/widgets/ui_loading.dart';
import 'package:app/presentation/widgets/ui_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:uuid/uuid.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final addressController = TextEditingController();
    final registerCubit = context.read<RegisterCubit>();

    void getLocationSearchResult(PlaceSuggestionEntity result) {
      context.read<RegisterCubit>().updateFullAddress(
            result.description,
          );
      addressController.text =
          context.read<RegisterCubit>().state.fullAddress ?? '';
      context.read<GetPlacesBloc>().add(
            OnGetLatLng(
              description: result.description ?? '',
            ),
          );
      context.read<GetPlacesBloc>().add(
            OnGetPlaceDetail(
              params: GetPlaceDetailParams(
                placeId: result.placeId,
                sessionToken: const Uuid().v4(),
                fields: 'address_component',
                apiKey: Platform.isAndroid
                    ? AppConstants.androidKey
                    : AppConstants.iosKey,
              ),
            ),
          );
    }

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.setWidth(10),
        vertical: context.setHeight(20),
      ),
      child: BlocListener<GetPlacesBloc, GetPlacesState>(
        listener: (context, state) {
          if (state is GetLatLngLoaded) {
            registerCubit.updateLatLng(
              state.location.latitude,
              state.location.longitude,
            );
          } else if (state is GetPlaceDetailLoaded) {
            registerCubit.updateZipCode(state.place.zipCode);
            registerCubit.updateCity(state.place.city);
          }
        },
        child: SingleChildScrollView(
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                BlocBuilder<GetRolesBloc, GetRolesState>(
                  builder: (context, state) {
                    if (state is GetRolesLoaded) {
                      return UIDropDown(
                        errorMessage: LocaleKeys.auth_role_required.tr(),
                        items: state.data.data
                            ?.map((e) => SelectModel(
                                  title: e.title,
                                  id: e.userGroupId,
                                ))
                            .toList(),
                        title: LocaleKeys.auth_choose_your_role.tr(),
                        onChanged: (value) => registerCubit
                            .updateRoleId(int.parse(value.id ?? '')),
                      );
                    } else if (state is GetRolesLoading) {
                      return const UILoading();
                    } else {
                      return Container();
                    }
                  },
                ),
                context.verticalSpaceSmall,
                UITextField(
                  hintText: LocaleKeys.auth_full_name.tr(),
                  onChanged: (value) => registerCubit.updateFullName(value),
                  onValidator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                context.verticalSpaceSmall,
                UITextField(
                  hintText: LocaleKeys.auth_user_name.tr(),
                  onChanged: (value) => registerCubit.updateUserName(value),
                  onValidator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                context.verticalSpaceSmall,
                BlocBuilder<RegisterCubit, RegisterCubitState>(
                  builder: (context, state) {
                    return UITextField(
                      controller: addressController
                        ..selection = const TextSelection.collapsed(offset: 0),
                      hintText: LocaleKeys.auth_location.tr(),
                      onValidator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      onChanged: (value) {},
                      onTap: () async {
                        final result = await showSearch(
                          context: context,
                          delegate: RegisterSearch(
                            bloc: context.read<GetPlacesBloc>(),
                          ),
                        );
                        if (result != null) {
                          getLocationSearchResult(result);
                        }
                      },
                    );
                  },
                ),
                context.verticalSpaceSmall,
                UITextField(
                  hintText: LocaleKeys.auth_email.tr(),
                  onChanged: (value) => registerCubit.updateEmail(value),
                  onValidator: (value) {
                    if (value?.isEmpty ?? false) {
                      return LocaleKeys.auth_empty_input.tr();
                    } else if (!ValidationUtil.isValidEmail(value ?? '')) {
                      return LocaleKeys.auth_email_invalid.tr();
                    }
                    return null;
                  },
                ),
                context.verticalSpaceSmall,
                UITextField(
                  hintText: LocaleKeys.auth_password.tr(),
                  isObscureText: true,
                  onChanged: (value) => registerCubit.updatePassword(value),
                  onValidator: (value) {
                    if (value?.isEmpty ?? false) {
                      return LocaleKeys.auth_empty_input.tr();
                    } else if (!ValidationUtil.isValidPassword(value ?? '')) {
                      return LocaleKeys.auth_password_invalid.tr();
                    }
                    return null;
                  },
                ),
                context.verticalSpaceSmall,
                UICheckBox(
                  title: LocaleKeys.auth_checked_term.tr(),
                  onChanged: (value) {},
                ),
                context.verticalSpaceMedium,
                const RegisterTerm(),
                context.verticalSpaceMedium,
                BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    if (state is RegisterLoading) {
                      EasyLoading.show();
                    } else if (state is RegisterSuccess) {
                      EasyLoading.dismiss();
                      context.pushRoute(MainRoute(
                          userId: int.parse(state.data.data?.userId ?? '')));
                      getIt<SharePreferencesUtil>().saveString(
                        AppPrefKey.token,
                        state.data.data?.accessToken ?? '',
                      );
                    } else if (state is RegisterError) {
                      EasyLoading.dismiss();
                      context.showError(state.message);
                    }
                  },
                  builder: (context, state) => UIButton(
                    title: LocaleKeys.auth_sign_up.tr(),
                    onPressed: () {
                      if (formKey.currentState?.saveAndValidate() ?? false) {
                        context.read<RegisterBloc>().add(
                              GetCredentialsAndRegister(
                                loginParams: LoginParams(
                                  clientId: AppConstants.clientId,
                                  clientSecret: AppConstants.clientSecret,
                                  grantType: AppConstants.roleGranType,
                                ),
                                registerParams: RegisterParams(
                                  valRole: registerCubit.state.roleId,
                                  valFullName: registerCubit.state.fullName,
                                  valUserName: registerCubit.state.userName,
                                  valCountryIso: registerCubit.state.zipCode,
                                  valCityLocation: registerCubit.state.city,
                                  valRegisterLocationLat:
                                      registerCubit.state.latitude,
                                  valRegisterLocationLng:
                                      registerCubit.state.longitude,
                                  valEmail: registerCubit.state.email,
                                  valPassword: registerCubit.state.password,
                                ),
                              ),
                            );
                      }
                    },
                  ),
                ),
                context.verticalSpaceMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
