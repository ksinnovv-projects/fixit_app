import 'package:fixit_app/core/res/res_export.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "User Name",
              style: AppTextStyles.dmSans12Bold(),
            ),
            Text(
              "Address",
              style: AppTextStyles.dmSans8Regular(),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
