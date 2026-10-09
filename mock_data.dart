import 'package:flutter/material.dart';
import '../theme.dart';

class GameMatch {
  final String time, league, startsIn;
  final String teamA, teamB, scoreA, scoreB;
  const GameMatch(this.time, this.league, this.startsIn, this.teamA, this.teamB, this.scoreA, this.scoreB);
}

class FeedItem {
  final IconData icon;
  final Color iconColor;
  final String title, subtitle, time;
  final bool isUpdate;
  const FeedItem(this.icon, this.iconColor, this.title, this.subtitle, this.time, {this.isUpdate = false});
}

const games = ['VAL', 'CS2', 'LoL', 'DOTA 2', 'R6', 'OW2', 'RL'];

const matches = [
  GameMatch('7:00 PM', 'VCT Americas', 'Starts in 5h 2m', 'SEN', 'PRX', '6-2', '5-3'),
  GameMatch('8:30 PM', 'VCT EMEA', 'Starts in 6h 32m', 'G2', 'FNC', '6-1', '4-3'),
  GameMatch('10:00 PM', 'VCT Pacific', 'Starts in 8h 2m', 'T1', 'GEN', '7-0', '5-2'),
];

const feed = [
  FeedItem(Icons.person, Colors.orange, 'TenZ', 'Posted a new clip', '1h'),
  FeedItem(Icons.emoji_events, accent, 'VCT Americas Stage 2', 'Schedule updated', '2h'),
  FeedItem(Icons.shield, Colors.purple, 'PRX', "d4v41 is doubtful for today's match", '3h', isUpdate: true),
  FeedItem(Icons.newspaper, accent, 'VALORANT Patch 9.08', 'Full patch notes', '5h'),
];

const followed = ['Sentinels', 'TenZ', 'VCT Americas Stage 2'];
