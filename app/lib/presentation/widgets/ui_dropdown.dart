import 'package:app/data/models/select_model.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class UIDropDown extends StatefulWidget {
  const UIDropDown({super.key});

  @override
  State<UIDropDown> createState() => _UIDropDownState();
}

class _UIDropDownState extends State<UIDropDown> {
  SelectModel option = const SelectModel();
  List<SelectModel> options = const [
    SelectModel(
      id: "1",
      title: 'User',
    ),
    SelectModel(
      id: "2",
      title: 'Admin',
    ),
    SelectModel(
      id: "3",
      title: 'Organizer',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<SelectModel>(
      name: 'options',
      validator: FormBuilderValidators.required(),
      decoration: const InputDecoration(
        label: Text('Choose your role'),
      ),
      onChanged: (value) {
        setState(() {
          option = value!;
        });
      },
      items: options
          .map(
            (e) => DropdownMenuItem<SelectModel>(
              child: Row(
                children: [
                  Text(
                    e.title ?? '',
                    style: const TextStyle(
                      color: ColorName.inputBorderColor,
                    ),
                  ),
                  Visibility(
                    visible: option.id == e.id,
                    child: SvgPicture.asset(
                      Assets.icons.iconChecked.path,
                    ),
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
