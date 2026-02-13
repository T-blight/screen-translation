import 'package:flutter/material.dart';

import '../../../features/domain/entities/setting_item.dart';

class FrameListView extends StatelessWidget {
  final List<SettingItem> items;
  const FrameListView({
    super.key,
    required this.items,
  });

  Widget itemWidget(SettingItem? item) {
    return InkWell(
      onTap: () => item?.feature,
      child: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item?.title ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item?.description ?? "",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_forward,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return itemWidget(item);
      }).toList(),
    );
  }
}
