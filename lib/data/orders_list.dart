import 'package:shyp_app/models/order_model.dart';
import 'package:shyp_app/models/order_status.dart';

List<OrderModel> dummyOrders = [
  OrderModel(
    "001",
    "Durgapur, West bengal",
    "Barpeta, Assam",
    "08-Mar-23",
    2.5,
    "Plastic",
    OrderStatus.Pending,
  ),
  OrderModel(
    "001",
    "123 Main St",
    "456 Elm St",
    "2023-05-24",
    2.5,
    "Plastic",
    OrderStatus.Pending,
  ),
  OrderModel(
    "002",
    "789 Oak Ave",
    "321 Pine St",
    "2023-05-25",
    1.8,
    "Metal",
    OrderStatus.InProgress,
  ),
  OrderModel(
    "003",
    "555 Maple St",
    "777 Cedar Ave",
    "2023-05-26",
    3.2,
    "Glass",
    OrderStatus.Pending,
  ),
  OrderModel(
    "004",
    "999 Birch Rd",
    "888 Willow Ln",
    "2023-05-27",
    4.0,
    "Paper",
    OrderStatus.InProgress,
  ),
];
