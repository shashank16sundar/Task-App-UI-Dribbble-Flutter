List<Map<dynamic, dynamic>> ongoingWidgetData = [
  {
    'importanceLevel': "High",
    'completedPercent': 82,
    'title': "Travel App UI",
    'startTime': "10:00",
    'endTime': "18:00",
    'dueMonth': "August",
    'dueDate': 25,
  },
  {
    'importanceLevel': "Low",
    'completedPercent': 21,
    'title': "Internship Meeting",
    'startTime': "13:00",
    'endTime': "14:00",
    'dueMonth': "September",
    'dueDate': 3,
  },
  {
    'importanceLevel': "Medium",
    'completedPercent': 46,
    'title': "Client Meeting",
    'startTime': "12:00",
    'endTime': "15:00",
    'dueMonth': "August",
    'dueDate': 18,
  }
];

String dateFinder(int date) {
  if (date % 7 == 1) {
    return "Mon";
  } else if (date % 7 == 2) {
    return "Tue";
  } else if (date % 7 == 3) {
    return "Wed";
  } else if (date % 7 == 4) {
    return "Thu";
  } else if (date % 7 == 5) {
    return "Fri";
  } else if (date % 7 == 6) {
    return "Sat";
  } else {
    return "Sun";
  }
}
