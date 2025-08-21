import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/size/dimensions.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_style.dart';

class PrimaryDropdownField<T> extends StatefulWidget {
  final String label;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final Function(T?) onChanged;
  final double? radius;
  final Color? color;
  final int? fontSize;
  final Color? labelColor;
  final bool isDense;
  final Color? fillColor;
  final bool isFilled;

  const PrimaryDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
    this.radius,
    this.color,
    this.fontSize,
    this.labelColor,
    this.isDense = false,
    this.fillColor,
    this.isFilled = true,
  });

  @override
  State<PrimaryDropdownField<T>> createState() =>
      _PrimaryDropdownFieldState<T>();
}

class _PrimaryDropdownFieldState<T> extends State<PrimaryDropdownField<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius ?? 12),
        color: widget.color ?? Colors.white,
      ),
      child: DropdownButtonFormField<T>(
        value: widget.value,
        items: widget.items,
        onChanged: widget.onChanged,
        style: CustomStyle.lightHeading5TextStyle.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: Dimensions.headingTextSize5,
          color: widget.color ?? CustomColor.grayColor,
        ),
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: CustomStyle.lightHeading5TextStyle.copyWith(
            fontSize: Dimensions.headingTextSize5,
            fontWeight: FontWeight.w400,
            color: CustomColor.grayColor,
          ),
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
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
        icon: Icon(Icons.arrow_drop_down, color: CustomColor.grayColor),
        isExpanded: true,
        dropdownColor: Colors.white,
        isDense: widget.isDense,
      ),
    );
  }
}
