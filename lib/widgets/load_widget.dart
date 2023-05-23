import 'package:flutter/material.dart';
import 'package:shyp_app/models/order_model.dart';
import 'package:shyp_app/models/order_status.dart';
import 'package:shyp_app/screens/track_load_screen.dart';
import 'package:shyp_app/theme.dart';

class LoadWidget extends StatelessWidget {
  final OrderModel order;
  const LoadWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme();
    return GestureDetector(
      onTap: (() {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TrackloadScreen()));
      }),
      child: Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price Pending",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: order.status == OrderStatus.Pending
                        ? theme.tertiaryAccentColor
                        : theme.warningColor,
                  ),
                  child: Text(
                    order.status.name,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.location_pin),
                    Text(
                      "From",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.fromAddress,
                      style: TextStyle(
                        color: theme.primaryTextColor,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      order.pickupDate,
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.secondaryTextColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 4),
            Divider(),
            SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.flag),
                    Text(
                      "To",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.toAddress,
                      style: TextStyle(
                        color: theme.primaryTextColor,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "To be determined",
                      style: TextStyle(
                        fontSize: 11,
                        color: theme.secondaryTextColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${order.quantity} Tonne • TMT • Open Full Body Truck",
                  style: TextStyle(
                    color: theme.primaryTextColor,
                    fontSize: 12,
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            )
          ],
        ),
      ),
    );
  }
}
