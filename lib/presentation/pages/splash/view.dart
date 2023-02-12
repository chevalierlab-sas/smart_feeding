import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_feeding/utils/res/res.dart';
import 'package:get/get.dart';


import 'cubit.dart';
import 'state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Get.toNamed('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SplashCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<SplashCubit>(context);

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Container(
          width: 308,
          height: 308,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img-logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}


