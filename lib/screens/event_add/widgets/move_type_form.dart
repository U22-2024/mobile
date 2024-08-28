import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event_material/event_material_repository.dart';
import 'package:mobile/proto/event/v1/core.pb.dart';

class MoveTypeForm extends HookConsumerWidget {
  const MoveTypeForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventMaterial = ref.watch(eventMaterialRepositoryProvider);
    final moveType = eventMaterial.predictSource.moveType;
    if (moveType != null && moveType != MoveType.MOVE_TYPE_UNSPECIFIED) {
      return const SizedBox();
    }

    return DropdownButtonFormField2(
      decoration: InputDecoration(
        labelText: '移動方法',
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      items: const [
        DropdownMenuItem(value: MoveType.MOVE_TYPE_WALK, child: Text('徒歩')),
        DropdownMenuItem(value: MoveType.MOVE_TYPE_CAR, child: Text('車')),
        DropdownMenuItem(value: MoveType.MOVE_TYPE_TRAIN, child: Text('電車')),
        DropdownMenuItem(
            value: MoveType.MOVE_TYPE_OTHER, child: Text('他の交通手段')),
      ],
      onChanged: (value) {},
      onSaved: (value) {
        if (value != null) {
          ref.read(eventMaterialRepositoryProvider.notifier).setMoveType(value);
        }
      },
      validator: (value) {
        if (value == null) {
          return '行き先を選択しなさい！';
        }
        return null;
      },
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 24,
      ),
    );
  }
}
