import 'package:flutter/material.dart';
import 'package:tombozi/presentation/widgets/app_bar/base_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        context: context,
        pageIndex: 0,
      ),
      body: Center(
        child: Text(
          'Trang chủ' ,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}