import 'package:flutter/material.dart';

extension SizedBoxExtension on num {
  Widget get widthtBox => SizedBox(width: toDouble());
  Widget get heightBox => SizedBox(height: toDouble());
}