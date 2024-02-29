import 'package:flutter/material.dart';

enum FromWho {me, hers}

class Message {
  final String text;
  final String? imageURL; // "?" Significa que podría ser nulo
  final FromWho fromWho;

  Message({required this.text, this.imageURL, required this.fromWho});

}
