import 'package:flutter/material.dart';

import 'simpleContainers/container_avator.dart';
import 'simpleContainers/container_gradiant.dart';

class LayoutContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ContainerLayout(),
            GradientContaier(),
          ],
        ),
      ),
    );
  }
}
