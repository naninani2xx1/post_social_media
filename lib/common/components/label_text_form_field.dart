import 'package:flutter/material.dart';
import 'package:post_media_social/config/colors.dart';
import 'package:post_media_social/config/style_text.dart';

class LabelTextFormField extends StatelessWidget {
  const LabelTextFormField(
      {super.key,
      required this.size,
      required this.controller,
      required this.label,
      required this.hintText,
      this.validator});
  final Size size;
  final TextEditingController controller;
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 25.0,
            minHeight: 18.0,
          ),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.04,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: AppStyleText.smallStyleColor,
              ),
            ),
          ),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          style: const TextStyle(
            fontSize: 14.0,
            color: AppColors.disable,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
