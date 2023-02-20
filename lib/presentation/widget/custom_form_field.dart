import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_feeding/utils/res/res.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final bool isPassword;
  final TextEditingController? controller;
  final BuildContext? context;
  final Function(String)? onFieldSubmitted;

  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.isPassword = false,
    this.controller,
    this.context,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
        ),
        const SizedBox(
          height: 8,
        ),

        if(!isPassword)
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: title,
              focusColor: kGreenColor,
              fillColor: kGreenColor,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kGreenColor, width: 2.0),
                borderRadius: BorderRadius.circular(14.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kGreyColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              contentPadding: const EdgeInsets.all(20),
            ),
          ),

        if(isPassword)
          TextFormField(
            obscureText: true,
            controller: controller,
            decoration: InputDecoration(
              hintText: title,
              focusColor: kGreenColor,
              fillColor: kGreenColor,
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility),
                focusColor: kGreenColor,
                onPressed: () => const Icon(Icons.visibility_off),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kGreenColor, width: 2.0),
                borderRadius: BorderRadius.circular(14.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kGreyColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              contentPadding: const EdgeInsets.all(20),
            ),
          ),
      ],
    );
  }
}
