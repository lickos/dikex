import 'package:dikex/Models/event.dart';

class Mocks {
  static List<MyEvents> events = [
    MyEvents(DateTime(2022 - 02 - 22), 'Γεύμα', '', 'Μακαρόνια με κιμά'),
    MyEvents(DateTime(2022 - 02 - 23), 'Γεύμα', '', 'Φακές'),
    MyEvents(DateTime(2022 - 02 - 23), 'Δραστηριότητα',
        'Ζωγραφική με ξυλομπογιές', 'Ζωγραφική'),
    MyEvents(DateTime(2022 - 02 - 24), 'Γεύμα', '', 'Κοτόπουλο με πατάτες'),
    MyEvents(DateTime(2022 - 02 - 24), 'Δραστηριότητα', 'Κατασκευές με πυλό',
        'Αγγειοπλαστική'),
  ];
}
