
import 'package:flutter/material.dart';
import 'package:lps_live_tracking/widget_inputdecoration.dart';

class FillBoxAnchor extends StatelessWidget {
  const FillBoxAnchor({
    Key? key,
    required TextEditingController anchor,
    required this.label,
  }) : _anchor = anchor, super(key: key);

  final TextEditingController _anchor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          return value!.isEmpty ? 'enter coordinate':null;
        },
        controller: _anchor,
        decoration: buildInputDecoration(
          label: label, 
          hintText: 'x,y'),
      ),
    );
  }
}

