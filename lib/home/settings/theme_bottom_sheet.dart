import 'package:flutter/material.dart';

class THemeBottomSheet extends StatelessWidget {
  THemeBottomSheet({super.key});

  bool isLight = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Light',
                style: TextStyle(
                    color: isLight
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              isLight
                  ? Icon(
                      Icons.done_outline_outlined,
                      color: Theme.of(context).primaryColor,
                    )
                  : SizedBox(),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dark',
                style: TextStyle(
                    color: isLight
                        ? Colors.black
                        : Theme.of(context).primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
              ),
              isLight
                  ? SizedBox()
                  : Icon(Icons.done_outline_outlined,
                      color: Theme.of(context).primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
