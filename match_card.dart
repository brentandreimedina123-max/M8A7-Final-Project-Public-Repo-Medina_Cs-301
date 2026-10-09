import 'package:flutter/material.dart';
import '../theme.dart';
import '../models/mock_data.dart';

class MatchCard extends StatelessWidget {
  final GameMatch match;
  const MatchCard({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: card, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(match.time, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TeamBadge(match.teamA, match.scoreA),
              _TeamBadge(match.teamB, match.scoreB),
            ],
          ),
          const Spacer(),
          Text(match.league, style: const TextStyle(fontSize: 11, color: textMuted)),
          Text(match.startsIn, style: const TextStyle(fontSize: 11, color: textMuted)),
        ],
      ),
    );
  }
}

class _TeamBadge extends StatelessWidget {
  final String name, score;
  const _TeamBadge(this.name, this.score);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 14, backgroundColor: cardAlt, child: Text(name[0])),
        const SizedBox(height: 2),
        Text(name, style: const TextStyle(fontSize: 10)),
        Text(score, style: const TextStyle(fontSize: 10, color: textMuted)),
      ],
    );
  }
}
