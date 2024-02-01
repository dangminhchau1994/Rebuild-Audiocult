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
    this.errorMessage,
  });

  final Function(SelectModel)? onChanged;
  final List<SelectModel>? items;
  final String? title;
  final String? errorMessage;
  final bool? haveIcon;

  @override
  State<UIDropDown> createState() => _UIDropDownState();
}

class _UIDropDownState extends State<UIDropDown> {
  SelectModel? selectedItem;

  Widget _buildItemWithoutIcon(SelectModel selectModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectModel.title ?? '',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: selectedItem?.id == selectModel.id
                    ? ColorName.white
                    : ColorName.itemDropdownUnselected,
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
                  : ColorName.itemDropdownUnselected,
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
      name: widget.title ?? '',
      icon: const SizedBox(),
      validator: (value) => value == null ? widget.errorMessage : null,
      dropdownColor: ColorName.secondaryButtonColor,
      initialValue: selectedItem,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: widget.title ?? '',
        suffixIcon: SvgPicture.asset(
          Assets.icons.iconDropDown.path,
          fit: BoxFit.scaleDown,
          height: 20,
          width: 20,
        ),
      ),
      items: widget.items!
          .map(
            (item) => DropdownMenuItem<SelectModel>(
              alignment: AlignmentDirectional.centerStart,
              value: item,
              child: _buildItemWithoutIcon(item),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          selectedItem = value!;
        });
      },
      selectedItemBuilder: (context) => widget.items!
          .map(
            (item) => Text(
              item.title ?? '',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorName.smallTextColor,
                  ),
            ),
          )
          .toList(),
    );
  }
}
