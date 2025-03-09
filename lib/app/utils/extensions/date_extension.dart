extension DateExtension on DateTime {
  String getTimeDifference() {
    DateTime now = DateTime.now();
    Duration difference = now.difference(this);
    if (difference.inHours == 0) {
      // If the hour difference is 0, show the minute difference
      if (difference.inSeconds < 60) {
        return 'just now';
      }
      int minuteDifference = difference.inMinutes;
      return '${minuteDifference}m';
    } else {
      if (difference.inHours > 24) {
        return '${difference.inDays}d';
      }
      // Otherwise, show the hour difference
      int hourDifference = difference.inHours;
      return '${hourDifference}h';
    }
  }
}
