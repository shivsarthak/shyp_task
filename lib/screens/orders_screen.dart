import 'package:flutter/material.dart';
import 'package:shyp_app/data/orders_list.dart';
import 'package:shyp_app/models/order_status.dart';
import 'package:shyp_app/theme.dart';
import 'package:shyp_app/widgets/load_widget.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final _theme = CustomTheme();
  var _dummyOrders = [];
  Set<OrderStatus> filters = <OrderStatus>{};
  @override
  Widget build(BuildContext context) {
    if (filters.isNotEmpty) {
      _dummyOrders = dummyOrders
          .where((element) =>
              filters.isNotEmpty ? (filters.contains(element.status)) : true)
          .toList();
    } else {
      _dummyOrders = dummyOrders;
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_shipping), label: "My Loads"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ],
          ),
          appBar: AppBar(
            backgroundColor: _theme.primaryColor,
            title: Text(
              'My Loads',
            ),
            centerTitle: false,
            bottom: TabBar(
              labelStyle:
                  TextStyle(fontFamily: 'Sora', fontWeight: FontWeight.w600),
              indicatorColor: _theme.backgroundColor,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  text: "Ongoing",
                ),
                Tab(text: "Past"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    Wrap(alignment: WrapAlignment.start, spacing: 5, children: [
                      FilterChip(
                        label: Text(
                          "All",
                          style: TextStyle(
                              color: _theme.primaryColor, fontSize: 12),
                        ),
                        onSelected: (bool selected) {
                          setState(() {
                            filters.clear();
                          });
                        },
                        side: BorderSide(color: _theme.primaryColor, width: 1),
                        selected: filters.isEmpty,
                        selectedColor: _theme.primaryAccentColor,
                        backgroundColor: _theme.white,
                        checkmarkColor: _theme.primaryColor,
                      ),
                      ...(OrderStatus.values
                          .map((e) => FilterChip(
                                label: Text(
                                  '${e.name}(${dummyOrders.where((element) => element.status == e).length})',
                                  style: TextStyle(
                                      color: _theme.primaryColor, fontSize: 12),
                                ),
                                onSelected: (bool selected) {
                                  setState(() {
                                    if (selected) {
                                      filters.add(e);
                                    } else {
                                      filters.remove(e);
                                    }
                                  });
                                },
                                side: BorderSide(
                                    color: _theme.primaryColor, width: 1),
                                selected: filters.contains(e),
                                selectedColor: _theme.primaryAccentColor,
                                backgroundColor: _theme.white,
                                checkmarkColor: _theme.primaryColor,
                              ))
                          .toList())
                    ]),
                    Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 24),
                          shrinkWrap: true,
                          itemCount: _dummyOrders.length,
                          itemBuilder: ((context, index) =>
                              LoadWidget(order: _dummyOrders[index]))),
                    )
                  ],
                ),
              ),
              Container()
            ],
          )),
    );
  }
}
