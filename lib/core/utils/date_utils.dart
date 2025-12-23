extension DateTimeExtensions on DateTime {
  //////////////////////////////////// DATE Utils/////////////////////////////////////////

  // Check if the date is today
  bool isToday() {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  // Check if the date is in the past
  bool isPast() => isBefore(DateTime.now());

  // Check if the date is in the future
  bool isFuture() => isAfter(DateTime.now());

  // Format the date as "dd-MM-yyyy"
  String formatDate() {
    return "${day.toString().padLeft(2, '0')}-${month.toString().padLeft(2, '0')}-$year";
  }

  // Format the date as "yyyy-MM-dd" (ISO format)
  String formatISODate() {
    return "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
  }

  // Format the date and time as "dd-MM-yyyy HH:mm"
  String formatDateTime() {
    return "${day.toString().padLeft(2, '0')}-${month.toString().padLeft(2, '0')}-$year ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  }

  // Get the age based on the date
  int getAge() {
    final now = DateTime.now();
    int age = now.year - year;
    if (now.month < month || (now.month == month && now.day < day)) {
      age--;
    }
    return age;
  }

  // Get the difference in days between this date and another date
  int differenceInDays(DateTime other) {
    return DateTime(
      year,
      month,
      day,
    ).difference(DateTime(other.year, other.month, other.day)).inDays;
  }

  // Get the difference in months between this date and another date
  int differenceInMonths(DateTime other) {
    return (year - other.year) * 12 + (month - other.month);
  }

  // Get the difference in years between this date and another date
  int differenceInYears(DateTime other) {
    return year - other.year;
  }

  // Add a specific number of days to the date
  DateTime addDays(int days) {
    return add(Duration(days: days));
  }

  // Subtract a specific number of days from the date
  DateTime subtractDays(int days) {
    return subtract(Duration(days: days));
  }

  // Get the start of the day (00:00:00)
  DateTime startOfDay() {
    return DateTime(year, month, day);
  }

  // Get the end of the day (23:59:59)
  DateTime endOfDay() {
    return DateTime(year, month, day, 23, 59, 59);
  }

  // Check if the date is a weekend
  bool isWeekend() {
    return weekday == DateTime.saturday || weekday == DateTime.sunday;
  }

  // Check if the date is a weekday
  bool isWeekday() {
    return !isWeekend();
  }

  // Get the name of the day (e.g., Monday, Tuesday)
  String get dayName {
    const days = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    ];
    return days[weekday - 1];
  }

  // Get the name of the month (e.g., January, February)
  String get monthName {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    return months[month - 1];
  }
}
