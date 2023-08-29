import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  final dynamic logo;
  const Brand({
    required this.logo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextButton(
        child: logo,
        onPressed: () {
          // Your onPressed logic here
        },
      ),
    );
  }
}
