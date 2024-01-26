import 'package:app/data/models/select_model.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UIDropDown extends StatefulWidget {
  const UIDropDown({
    super.key,
    this.items,
    this.title,
    this.onChanged,
    this.haveIcon,
  });

  final List<SelectModel>? items;
  final String? title;
  final Function(SelectModel)? onChanged;
  final bool? haveIcon;

  @override
  State<UIDropDown> createState() => _UIDropDownState();
}

class _UIDropDownState extends State<UIDropDown> {
  SelectModel? selectedItem;
  List<SelectModel> items = [
    SelectModel(
      id: "1",
      title: "Admin",
      iconPath: Assets.icons.iconGlobal.path,
    ),
    SelectModel(
      id: "2",
      title: "User",
      iconPath: Assets.icons.iconUserSubscription.path,
    ),
    SelectModel(
      id: "3",
      title: "Artist",
      iconPath: Assets.icons.iconUserFriends.path,
    ),
  ];

  Widget _buildItemWithoutIcon(SelectModel selectModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectModel.title ?? '',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: selectedItem?.id == selectModel.id
                    ? ColorName.white
                    : ColorName.inputBorderColor,
              ),
        ),
        Visibility(
          visible: selectedItem?.id == selectModel.id,
          child: SvgPicture.asset(
            Assets.icons.iconChecked.path,
            fit: BoxFit.scaleDown,
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildItemWithIcon(SelectModel selectModel) {
    return ListTile(
      leading: SvgPicture.asset(selectModel.iconPath ?? ''),
      title: Text(
        selectModel.title ?? '',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: selectedItem?.id == selectModel.id
                  ? ColorName.white
                  : ColorName.inputBorderColor,
            ),
      ),
      trailing: Visibility(
        visible: selectedItem?.id == selectModel.id,
        child: SvgPicture.asset(
          Assets.icons.iconChecked.path,
          fit: BoxFit.scaleDown,
          height: 20,
          width: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<SelectModel>(
      name: 'gender',
      icon: const SizedBox(),
      dropdownColor: ColorName.secondaryButtonColor,
      onChanged: (value) {
        setState(() {
          selectedItem = value!;
        });
      },
      selectedItemBuilder: (context) => items
          .map(
            (item) => Text(
              item.title ?? '',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorName.inputBorderColor,
                  ),
            ),
          )
          .toList(),
      initialValue: selectedItem,
      decoration: InputDecoration(
        hintText: 'Choose your role',
        suffixIcon: SvgPicture.asset(
          Assets.icons.iconDropDown.path,
          fit: BoxFit.scaleDown,
          height: 20,
          width: 20,
        ),
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<SelectModel>(
              alignment: AlignmentDirectional.centerStart,
              value: item,
              child: _buildItemWithIcon(item),
            ),
          )
          .toList(),
    );
  }
}
