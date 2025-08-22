import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_ifi_app/core/ui/size/dimensions.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_style.dart';

class PrimaryFormField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final FocusNode? focusNode;
  double? radius;
  Color? color;
  int? fontSize;
  Color? labelColor;
  final TextInputAction textInputAction;
  bool isDense;
  final List<TextInputFormatter>? inputFormatter;
  final bool isPassword;
  final TextInputType? textInputType;
  Color? fillColor;
  final Widget? suffixIcon;
  final bool isFilled;
  int? maxLines;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;

  PrimaryFormField({
    super.key,
    required this.label,
    required this.controller,
    this.radius,
    this.color,
    this.fontSize,
    this.labelColor,
    this.isDense = false,
    this.inputFormatter,
    this.isPassword = false,
    this.textInputType,
    this.fillColor,
    this.suffixIcon,
    this.isFilled = true,
    this.textInputAction = TextInputAction.next,
    this.maxLines = 1,
    this.onTap,
    this.onEditingComplete,
    this.focusNode,
  });

  @override
  State<PrimaryFormField> createState() => _PrimaryFormFieldState();
}

class _PrimaryFormFieldState extends State<PrimaryFormField> {
  bool isVisibility = true;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius ?? 12),
        color: widget.color ?? Colors.white,
      ),
      child: TextFormField(
        controller: widget.controller,
        style: CustomStyle.lightHeading5TextStyle.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: Dimensions.headingTextSize5,
          color: widget.color ?? CustomColor.grayColor,
        ),
        focusNode: _focusNode,
        inputFormatters: widget.inputFormatter,
        obscureText: widget.isPassword ? isVisibility : false,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        maxLines: widget.maxLines,
        onTap: widget.onTap,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: CustomStyle.lightHeading5TextStyle.copyWith(
            fontSize: Dimensions.headingTextSize5,
            fontWeight: FontWeight.w400,
            color: CustomColor.grayColor,
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    isVisibility
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: CustomColor.grayColor,
                  ),
                  onPressed: () {
                    setState(() {
                      isVisibility = !isVisibility;
                    });
                  },
                )
              : widget.suffixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(widget.radius ?? 12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(widget.radius ?? 12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(widget.radius ?? 12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(widget.radius ?? 12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.withOpacity(0.8)),
            borderRadius: BorderRadius.circular(widget.radius ?? 12),
          ),
          fillColor: widget.fillColor ?? Colors.white,
          filled: widget.isFilled,
        ),
        onTapAlwaysCalled: true,
        onFieldSubmitted: (value) {
          if (widget.textInputAction == TextInputAction.next) {
            _focusNode.nextFocus();
          } else {
            _focusNode.unfocus();
          }
          if (widget.onEditingComplete != null) {
            widget.onEditingComplete!();
          }
        },
        onEditingComplete: () {
          if (widget.textInputAction == TextInputAction.next) {
            _focusNode.nextFocus();
          } else {
            _focusNode.unfocus();
          }
          if (widget.onEditingComplete != null) {
            widget.onEditingComplete!();
          }
        },
        onTapOutside: (value) {
          if (_focusNode.hasFocus) {
            _focusNode.unfocus();
          }
        },
        onSaved: (value) {
          if (_focusNode.hasFocus) {
            _focusNode.unfocus();
          }
        },
        onTapUpOutside: (value) {
          if (mounted && _focusNode.hasFocus) {
            setState(() {
              _focusNode.unfocus();
            });
          }
        },
      ),
    );
  }
}
