import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class SavingsTableWidget extends StatelessWidget {
  const SavingsTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: TitleHeading5Widget(
              text: "Rincian Tagihan",
              color: Colors.grey[600],
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(1),
              },
              children: [
                _buildTableRowWidget('Uang Bulanan', 'Rp 2,000,000', true),
                TableRow(
                  children: [
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                  ],
                ),
                _buildTableRowWidget('Biaya Asrama', 'Rp 1,000,000', true),
                TableRow(
                  children: [
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                  ],
                ),
                _buildTableRowWidget('Katering', 'Rp 500,000', true),
                TableRow(
                  children: [
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                  ],
                ),
                _buildTableRowWidget('Laundry', 'Rp 500,000', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRowWidget(String label, String amount, bool isPaid) {
    return TableRow(
      children: [
        TableCell(
          child: TitleHeading5Widget(
            text: label,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        TableCell(
          child: TitleHeading5Widget(
            text: amount,
            fontSize: 16,
            color: Colors.black,
            textAlign: TextAlign.center,
          ),
        ),
        TableCell(
          child: TitleHeading5Widget(
            text: isPaid ? "Lunas" : "Belum Lunas",
            fontSize: 16,
            textAlign: TextAlign.center,
            color: isPaid ? CustomColor.primaryColor : Colors.red,
          ),
        ),
      ],
    );
  }
}
