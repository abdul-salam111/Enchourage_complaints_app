import 'package:intl/intl.dart';

//////////////////////////////////////////////////CURRENCY UTILS///////////////////////////////////////////////////

extension NumberFormatting on num {
  String get withCommas {
    return NumberFormat("#,##0", "en_US").format(this);
  }

  String get asCurrency {
    return NumberFormat.currency(locale: "en_US", symbol: "\$").format(this);
  }

  String formatPrice(double price, {String? symbol}) {
    final formatter = NumberFormat('#,###');
    final formatted = formatter.format(price);
    return symbol != null ? '$symbol$formatted' : formatted;
  }
}
