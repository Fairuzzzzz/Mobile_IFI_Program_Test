import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class PaymentExpandedCard extends StatefulWidget {
  final String title;
  final String description;

  const PaymentExpandedCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<PaymentExpandedCard> createState() => _PaymentExpandedCardState();
}

class _PaymentExpandedCardState extends State<PaymentExpandedCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: _isExpanded
                    ? Radius.circular(0)
                    : Radius.circular(12),
                bottomRight: _isExpanded
                    ? Radius.circular(0)
                    : Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleHeading5Widget(
                  text: widget.title,
                  color: Colors.grey[600],
                ),
                _isExpanded
                    ? Iconify(
                        MaterialSymbols.keyboard_arrow_down_rounded,
                        color: Colors.grey[600],
                      )
                    : Iconify(
                        MaterialSymbols.keyboard_arrow_up_rounded,
                        color: Colors.grey[600],
                      ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: _isExpanded ? 120 : 0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            boxShadow: _isExpanded
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ]
                : [],
          ),
          child: _isExpanded ? _buildDetails() : null,
        ),
      ],
    );
  }

  Widget _buildDetails() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ScaledVerticalSpace(12),
          Expanded(
            flex: 2,
            child: TitleHeading5Widget(
              text: widget.description,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
