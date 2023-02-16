import 'package:flutter/material.dart';
import 'package:smart_feeding/utils/res/res.dart';

class CustomFormField extends StatefulWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;

  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  final TextEditingController _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _isFocused = false;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _focusNode.addListener(() {
  //     setState(() {
  //       _isFocused = _focusNode.hasFocus;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          focusNode: _focusNode,
          controller: _controller,
          decoration: InputDecoration(
            hintText: widget.title,
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
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
