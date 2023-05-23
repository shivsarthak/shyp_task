import 'package:shyp_app/models/order_status.dart';

class OrderModel {
  final String orderId;
  final String fromAddress;
  final String toAddress;
  final String pickupDate;
  final double quantity;
  final String materialType;
  final OrderStatus status;
  OrderModel(this.orderId, this.fromAddress, this.toAddress, this.pickupDate,
      this.quantity, this.materialType, this.status);
}
