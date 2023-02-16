import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_feeding/presentation/widget/custom_button.dart';
import 'package:smart_feeding/presentation/widget/custom_form_field.dart';
import 'package:smart_feeding/utils/res/res.dart';

import 'login_cubit.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: _screen(),
    );
  }

  _screen() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          snap: false,
          floating: false,
          toolbarHeight: 120.0,
          expandedHeight: 70.0,
          backgroundColor: kWhiteColor,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 18,
                  left: 14,
                  right: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Masukkan sekarang',
                      style: blackTextStyle.copyWith(
                        fontSize: 28,
                        fontWeight: extraBold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Silakan masukkan detail di bawah \nuntuk melanjutkan',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img-logo.png'),
              ),
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: CustomFormField(title: 'Email'),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: CustomFormField(title: 'Password'),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: CustomButton(title: 'Masuk'),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 1,
                    color: kGreyColor,
                  ),
                  Text(
                    'masuk dengan',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 1,
                    color: kGreyColor,
                  ),
                ],
              ),
            )
          ),
        ),
         SliverPadding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 24,
          ),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/img-logo-google.png',
                  height: 24.0,
                ),
                label: Text(
                  'Sign in with Google',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey.withOpacity(0.5),
                  elevation: 6,
                  primary: kWhiteColor,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ),
        ),
      ],
    );
  }
}
