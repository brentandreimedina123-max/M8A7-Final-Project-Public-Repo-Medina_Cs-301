import 'package:flutter/material.dart';
import '../theme.dart';
import '../models/mock_data.dart';

class FeedTile extends StatelessWidget {
  final FeedItem item;
  const FeedTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: cardAlt, child: Icon(item.icon, color: item.iconColor, size: 20)),
      title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(item.subtitle, style: const TextStyle(color: textMuted)),
      trailing: item.isUpdate
          ? const Text('Update', style: TextStyle(color: accent, fontWeight: FontWeight.bold, fontSize: 12))
          : Text(item.time, style: const TextStyle(color: textMuted, fontSize: 12)),
    );
  }
}
