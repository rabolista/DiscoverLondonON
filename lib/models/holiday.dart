class Holiday {
  final String name;
  final DateTime date;
  final String note;

  const Holiday({required this.name, required this.date, required this.note});

  static const _months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
  ];

  String get formattedDate => '${_months[date.month - 1]} ${date.day}';
}
