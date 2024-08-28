import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event_material/event_material_repository.dart';
import 'package:mobile/proto/event/v1/event_material.pb.dart';

class DestinationForm extends HookConsumerWidget {
  const DestinationForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventMaterial = ref.watch(eventMaterialRepositoryProvider);
    final isDisable =
        ((eventMaterial.predictSource.destination?.isNotEmpty ?? false) &&
            eventMaterial.clientOnlyState.destPos != null);
    if (isDisable) {
      return const SizedBox();
    }

    final textController =
        useTextEditingController(text: eventMaterial.predictSource.destination);
    final places = useState<List<Place>>([]);
    final pendingPlacesReq = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingPlacesReq.value);
    final mediaQuery = MediaQuery.of(context);
    final lastSearched = useState<String?>(null);

    return Column(
      children: [
        TextFormField(
          enabled:
              !isDisable && snapshot.connectionState != ConnectionState.waiting,
          controller: textController,
          decoration: const InputDecoration(
            labelText: 'どこに行く？',
            hintText: '例: 近くのレストラン、○○駅',
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return '候補選択中...';
            }
            if (places.value.isEmpty) {
              return '行先の候補を選択して';
            }
            if (value?.isEmpty ?? true) {
              return '行き先は分かりやすく入力しなさい！';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        if (!isDisable &&
            (places.value.isEmpty ||
                lastSearched.value != textController.text)) ...[
          ElevatedButton(
            onPressed: snapshot.connectionState == ConnectionState.waiting
                ? null
                : () async {
                    if (textController.text.isEmpty) return;
                    final future = ref.read(predictPlacesByTextProvider
                        .call(textController.text)
                        .future);
                    pendingPlacesReq.value = future;
                    places.value = await future;
                    lastSearched.value = textController.text;
                  },
            child: snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator()
                : const Text("候補を検索"),
          ),
          const SizedBox(height: 16)
        ],
        if (places.value.isNotEmpty &&
            snapshot.connectionState != ConnectionState.waiting)
          DropdownButtonFormField2(
            decoration: InputDecoration(
              enabled: !isDisable,
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: const Text('候補から行き先を選択'),
            items: places.value
                .map(
                  (place) => DropdownMenuItem(
                    value: place,
                    child: SizedBox(
                      width: mediaQuery.size.width - 96,
                      child: Text(
                        "${place.name} | ${place.address}",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                )
                .toList(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: isDisable ? null : (value) {},
            onSaved: (value) {
              if (value == null) return;
              ref
                  .read(eventMaterialRepositoryProvider.notifier)
                  .setDestination(value);
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
              height: 80,
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
          ),
      ],
    );
  }
}
