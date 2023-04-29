import 'package:flutter/material.dart';

/// 通用异常视图-只有文字
class CommonErrorTextView extends StatelessWidget {
  const CommonErrorTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      // S.current.data_error_tips_no_refresh,
      "hahaha",
      style: TextStyle(
        color: const Color(0x80FFFFFF),
        fontSize: 10.67,
      ),
    ));
  }
}
