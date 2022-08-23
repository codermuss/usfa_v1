import 'package:flutter/material.dart';

class BasePageSkeleton extends StatelessWidget {
  final Widget? child;

  const BasePageSkeleton({Key? key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("USFA"),
      ),
      body: child,
    );
  }
}
