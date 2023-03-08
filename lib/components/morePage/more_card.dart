import 'package:flutter/material.dart';
import 'package:project3/models/more_list.dart';

class MoreCard extends StatefulWidget {
  const MoreCard({
    Key? key,
    required this.moreCard,
  }) : super(key: key);
  final MoreList moreCard;

  @override
  State<MoreCard> createState() => _MoreCardState();
}

class _MoreCardState extends State<MoreCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                widget.moreCard.moreIcon,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  widget.moreCard.moreTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
