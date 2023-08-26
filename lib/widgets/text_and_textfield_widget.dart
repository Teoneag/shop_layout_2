import 'package:flutter/material.dart';

class TextF1 extends StatelessWidget {
  final String text;
  final String? description;
  final String hint;
  final TextEditingController controller;
  final bool? isMultiLine;
  final bool? isOptional;

  const TextF1(
    this.text,
    this.hint,
    this.controller, {
    this.description,
    this.isMultiLine,
    this.isOptional,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        if (description != null) const SizedBox(height: 5),
        if (description != null) Text(description!),
        if (description != null) const SizedBox(height: 5),
        const SizedBox(height: 5),
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
          child: TextFormField(
            validator: (value) {
              if (isOptional == true) {
                return null;
              }
              if (value == null || value.isEmpty) {
                return 'Please complete this field';
              }
              return null;
            },
            controller: controller,
            maxLines: isMultiLine == true ? 5 : 1,
            decoration: InputDecoration(
              hintText: hint,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
