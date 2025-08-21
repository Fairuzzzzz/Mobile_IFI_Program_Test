import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading1_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class OutcomeCard extends StatefulWidget {
  final String date;
  final String amount;
  final List<Map<String, dynamic>> details;

  const OutcomeCard({
    super.key,
    required this.date,
    required this.amount,
    required this.details,
  });

  @override
  State<OutcomeCard> createState() => _OutcomeCardState();
}

class _OutcomeCardState extends State<OutcomeCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: CustomColor.primaryColor.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/history_color.svg'),
                    ScaledHorizontalSpace(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TitleHeading5Widget(
                          text: "Tagihan",
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        ScaledVerticalSpace(4),
                        TitleHeading5Widget(
                          text: widget.date,
                          color: CustomColor.primaryColor.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ],
                ),
                TitleHeading1Widget(
                  text: "- ${widget.amount}",
                  color: CustomColor.primaryColor,
                  fontSize: 20,
                ),
              ],
            ),
            ScaledVerticalSpace(12),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleHeading5Widget(
                      text: "Rincian Tagihan",
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
              height: _isExpanded ? widget.details.length * 60.0 : 0,
              decoration: BoxDecoration(
                color: Colors.white,
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
              child: _isExpanded ? _buildDetailsTable() : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsTable() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.details.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => Divider(height: 1),
        itemBuilder: (context, index) {
          final detail = widget.details[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: TitleHeading5Widget(
                    text: detail['label'],
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TitleHeading5Widget(
                    text: detail['amount'],
                    fontSize: 14,
                    color: Colors.black,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: TitleHeading5Widget(
                    text: detail['isPaid'] ? "Lunas" : "Belum",
                    fontSize: 14,
                    color: detail['isPaid']
                        ? CustomColor.primaryColor
                        : Colors.red,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
