// import 'package:intl/intl.dart';

// String? accessToken;
// String? refresh_token;
// String? role;
// String? fcmToken;

// int? code;

// String formatDate(String timestampString) {
//   DateTime timestamp = DateTime.parse(timestampString);
//   // Define the desired date format
//   final DateFormat formatter = DateFormat('d MMMM yyyy');

//   // Format the timestamp to the desired format
//   String formattedDate = formatter.format(timestamp);

//   return formattedDate;
// }

// String calculateDateDifference(String timestampString) {
//   DateTime timestamp = DateTime.parse(timestampString);
//   DateTime currentDate = DateTime.now();

//   // Calculate the difference in days
//   int differenceInDays = currentDate.difference(timestamp).inDays;

//   if (differenceInDays == 0) {
//     return 'Today';
//   } else if (differenceInDays == 1) {
//     return 'Yesterday';
//   } else if (differenceInDays < 7) {
//     return '$differenceInDays days ago';
//   } else if (differenceInDays < 30) {
//     int weeks = (differenceInDays / 7).floor();
//     return '$weeks weeks ';
//   } else if (differenceInDays < 365) {
//     int months = (differenceInDays / 30).floor();
//     return '$months months ';
//   } else {
//     int years = (differenceInDays / 365).floor();
//     return '$years years ';
//   }
// }

// String formatTimeString(String inputDateString) {
//   DateTime dateTime = DateTime.parse(inputDateString);
//   String formattedTime = DateFormat.jm().format(dateTime);
//   return formattedTime;
// }

// // String spotifyAccessToken = "";
// // String radiolineAccessToken = "";
// // String moviesAccessToken = "";

// // var clientId = "a8280ee23de047c7a15df016a8f7548a";
// // var secretKey = "850b3986d45b434e8526d00a28d133d1";
// // var weatherApiKey = "6567c9a3ea2d146ab35d1c200e364d17";
// // String trackId = "7qF0FfuzBFwMe1lNHkEDxW";

// // Future<String> loadMapStyles() async {
// //   return await rootBundle.loadString('assets/map_styles/dark.json');
// // }
