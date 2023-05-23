import 'package:flutter/material.dart';
import 'package:shyp_app/theme.dart';

class ConfirmBookingWidget extends StatefulWidget {
  const ConfirmBookingWidget({super.key});

  @override
  State<ConfirmBookingWidget> createState() => _ConfirmBookingWidgetState();
}

class _ConfirmBookingWidgetState extends State<ConfirmBookingWidget> {
  int _currentStep = 0;
  String? _consignor, _consignee;
  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme();
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Confirm Load Booking",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Stepper(
            currentStep: _currentStep,
            onStepCancel: () {
              Navigator.of(context).pop();
            },
            onStepContinue: () {
              if (_currentStep < 1) {
                setState(() {
                  _currentStep++;
                });
              } else {
                // TODO: Add booking logic here
                Navigator.of(context).pop();
              }
            },
            steps: [
              Step(
                title: Text("Consignor Details"),
                subtitle: Text("Dispatch From ${_consignor ?? ''}"),
                isActive: true,
                state:
                    _currentStep == 0 ? StepState.indexed : StepState.complete,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButton<String>(
                        value: _consignor,
                        isExpanded: true,
                        elevation: 1,
                        hint: Text("Select A Consignor"),
                        items: [
                          'Krishna Pvt. Ltd.',
                          'ABC Logistics Ltd.',
                          'Test Consigner Pvt. Ltd.'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (v) {
                          setState(() {
                            _consignor = v;
                          });
                        }),
                    SizedBox(height: 12),
                    Text(
                      "+ Add New Consigner Contact",
                      style: TextStyle(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Step(
                title: Text("Consignee Details"),
                subtitle: Text("Ship To ${_consignee ?? ''}"),
                isActive: _currentStep > 0,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButton<String>(
                        value: _consignee,
                        isExpanded: true,
                        elevation: 1,
                        hint: Text("Select A Consignee"),
                        items: [
                          'Krishna Pvt. Ltd.',
                          'ABC Logistics Ltd.',
                          'Test Consigner Pvt. Ltd.'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (v) {
                          setState(() {
                            _consignee = v;
                          });
                        }),
                    SizedBox(height: 12),
                    Text(
                      "+ Add New Consignee Contact",
                      style: TextStyle(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
