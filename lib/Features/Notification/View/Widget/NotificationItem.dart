import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../Bill_Payment/View/Bill_paymentScreen.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, this.icon, required this.text});
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BillPaymnt(),
        ));
      },
      child: Container(
        color: const Color(0xffFAFAFA),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Material(
          elevation: .5,
          borderRadius: BorderRadius.circular(8),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xffF5F5F5), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              child: ListTile(
                leading: Icon(
                  icon,
                  color: const Color(0xff797979),
                  size: 35,
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff797979),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          SolarIconsOutline.clockCircle,
                          size: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "23 jul 2023",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff797979),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
