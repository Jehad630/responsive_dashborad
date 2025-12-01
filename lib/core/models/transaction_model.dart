class TransactionModel {
  final String title, date, amount;
  final bool isWithdraw;

  TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdraw,
  });
}
