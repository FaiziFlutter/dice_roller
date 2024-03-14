import 'package:flutter/material.dart';
import 'package:dice_roller/widgets/text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({required this.onPressed, super.key});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: const ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 189, 5, 51))),
      onPressed: onPressed,
      label: const CustomText(text: 'Roll'),
      icon: const Icon(Icons.arrow_forward),
    );
  }
}
