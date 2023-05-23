import 'package:flutter/material.dart';
import 'package:shyp_app/theme.dart';
import 'package:shyp_app/widgets/confirm_booking.dart';

class TrackloadScreen extends StatelessWidget {
  const TrackloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme();
    return Scaffold(
      appBar: AppBar(
        title: Text('Load Summary'),
        backgroundColor: theme.primaryColor,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order #79",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.all(16),
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
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup Location",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: theme.secondaryTextColor),
                              ),
                              Text(
                                "Durgapur, West Bengal",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 14),
                              Text(
                                "Drop Location",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: theme.secondaryTextColor),
                              ),
                              Text(
                                "Pathsala, Assam",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Image.network(
                            "https://www.iconpacks.net/icons/1/free-truck-icon-1058-thumb.png",
                            width: MediaQuery.of(context).size.width / 4,
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Divider(),
                      SizedBox(height: 8),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order Id",
                              style: TextStyle(
                                color: theme.secondaryTextColor,
                              ),
                            ),
                            Text("79")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pickup Date",
                              style: TextStyle(
                                color: theme.secondaryTextColor,
                              ),
                            ),
                            Text("02-Feb-23")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Preferred Vehicle",
                              style: TextStyle(
                                color: theme.secondaryTextColor,
                              ),
                            ),
                            Text("Open Half Body Truck")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantity of Load",
                              style: TextStyle(
                                color: theme.secondaryTextColor,
                              ),
                            ),
                            Text("25.0 Tonne")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Material Type",
                              style: TextStyle(
                                color: theme.secondaryTextColor,
                              ),
                            ),
                            Text("TMT")
                          ]),
                    ]),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Status",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: theme.primaryColor,
                        size: 20,
                      ),
                      Text(
                        "Pending",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: theme.primaryColor,
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.radio_button_checked,
                        color: theme.primaryColor,
                        size: 20,
                      ),
                      Text(
                        "Quoted",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: theme.primaryColor,
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.radio_button_unchecked,
                        color: theme.primaryColor,
                        size: 20,
                      ),
                      Text(
                        "Scheduled",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: theme.primaryColor,
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.radio_button_unchecked,
                        color: theme.primaryColor,
                        size: 20,
                      ),
                      Text(
                        "In Progress",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: theme.primaryColor,
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.radio_button_unchecked,
                        color: theme.primaryColor,
                        size: 20,
                      ),
                      Text(
                        "Complete",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Per Tonne Freight Price",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Rs. 3000.0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Divider(thickness: 1),
              SizedBox(height: 12),
              MaterialButton(
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 12),
                minWidth: (MediaQuery.of(context).size.width - 36),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      context: context,
                      builder: (context) {
                        return ConfirmBookingWidget();
                      });
                },
                color: theme.primaryColor,
                textColor: theme.white,
                child: Text(
                  "Confirm Load Booking",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              MaterialButton(
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 12),
                minWidth: MediaQuery.of(context).size.width - 36,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: theme.primaryColor),
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {},
                color: Colors.white,
                textColor: theme.primaryColor,
                child: Text(
                  "Cancel Order",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
