import 'dart:io';
import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/constants/app_text_styles.dart';
import 'package:app/core/extension/app_extension.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/codegen_loader.g.dart';
import 'package:app/presentation/blocs/get_places/get_places_bloc.dart';
import 'package:app/presentation/blocs/get_places/get_places_event.dart';
import 'package:app/presentation/blocs/get_places/get_places_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class RegisterSearch extends SearchDelegate<PlaceSuggestionEntity?> {
  final GetPlacesBloc bloc;

  RegisterSearch({required this.bloc});

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.bodySmall.copyWith(
          color: ColorName.smallTextColor,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      scaffoldBackgroundColor: ColorName.backgroundColor,
      textTheme: Theme.of(context).textTheme.copyWith(
            titleLarge: const TextStyle(color: ColorName.white),
          ),
      appBarTheme: const AppBarTheme(
        color: ColorName.secondaryButtonColor,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: LocaleKeys.clear.tr(),
        icon: const Icon(
          Icons.clear,
          color: ColorName.white,
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: ColorName.white,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  void queryChanged(String query, BuildContext context) async {
    bloc.add(
      OnSearchPlaces(
        params: GetPlacesParams(
          input: query,
          types: 'address',
          sessionToken: const Uuid().v4(),
          languageCode: Localizations.localeOf(context).languageCode,
          apiKey: Platform.isAndroid
              ? AppConstants.androidKey
              : AppConstants.iosKey,
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color: ColorName.backgroundColor,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    queryChanged(query, context);
    return BlocBuilder<GetPlacesBloc, GetPlacesState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is GetPlacesLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetPlacesLoaded) {
          return ListView.builder(
            itemCount: state.places.length,
            itemBuilder: (context, index) {
              final place = state.places[index];
              return ListTile(
                title: Text(
                  place.description ?? '',
                  style: context.bodySmall.copyWith(
                    color: ColorName.white,
                  ),
                ),
                onTap: () {
                  close(context, place);
                },
              );
            },
          );
        } else if (state is GetPlacesError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: Text(''),
          );
        }
      },
    );
  }
}
