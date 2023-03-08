import 'package:flutter/material.dart';

class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 20,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 197, 195, 195),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
      ),
    );
  }
}
