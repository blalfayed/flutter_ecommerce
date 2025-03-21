import 'package:ecommerce/presentation/home/widgets/categories.dart';
import 'package:ecommerce/presentation/home/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 24,
            ),
            SearchField(),
            SizedBox(
              height: 24,
            ),
            Categories()
          ],
        ),
      ),
    );
  }
}
