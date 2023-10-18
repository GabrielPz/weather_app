import 'package:flutter/material.dart';

class CardRow extends StatefulWidget {
  const CardRow({
    super.key,
    required this.imageUrl,
    required this.tittle,
    required this.subtittle,
  });

  final String imageUrl;
  final String tittle;
  final String subtittle;

  @override
  State<CardRow> createState() => _CardRowState();
}

class _CardRowState extends State<CardRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              widget.imageUrl,
              scale: 8,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.tittle,
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  widget.subtittle,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
