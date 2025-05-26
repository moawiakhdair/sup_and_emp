import 'sup.dart';

class Employee {
  final String name;
  final int id;
  DateTime? checkInTime;
  DateTime? checkOutTime;
  Supervisor? supervisor;

  Employee({required this.name, required this.id});
}
