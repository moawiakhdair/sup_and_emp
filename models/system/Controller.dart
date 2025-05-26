import '../emp.dart';
import '../sup.dart';

class Controller {
  List<Employee> teamEmp = [];
  List<Supervisor> teamSup = [];

  void addEmployee(Employee emp) {
    teamEmp.add(emp);
    print("Employee ${emp.name} added.");
  }

  void addSupervisor(Supervisor sup) {
    teamSup.add(sup);
    print("Supervisor ${sup.name} added.");
  }

  void assignEmployee(int employeeID, int supervisorID) {
    final emp = teamEmp.firstWhere(
      (e) => e.id == employeeID,
      orElse: () => throw Exception("Employee ID $employeeID doesn't exist"),
    );

    final sup = teamSup.firstWhere(
      (s) => s.id == supervisorID,
      orElse:
          () => throw Exception("Supervisor ID $supervisorID doesn't exist"),
    );

    sup.teamEmp.add(emp);
    emp.supervisor = sup;
    print("${emp.name} assigned to ${sup.name}");
  }

  void displayEmployeeInfo(int employeeID) {
    final emp = teamEmp.firstWhere(
      (e) => e.id == employeeID,
      orElse: () => throw Exception("Employee ID $employeeID doesn't exist"),
    );

    print("******** Display Employee Info ********");
    print("Name: ${emp.name}");
    print("ID: ${emp.id}");
    if (emp.supervisor != null) {
      print("Supervisor: ${emp.supervisor!.name}");
    } else {
      print("No supervisor assigned.");
    }
    print("Check-in Time: ${emp.checkInTime}");
    print("Check-out Time: ${emp.checkOutTime}");
  }

  void checkIn(int employeeID) {
    final emp = teamEmp.firstWhere(
      (e) => e.id == employeeID,
      orElse: () => throw Exception("Employee ID $employeeID doesn't exist"),
    );
    emp.checkInTime = DateTime.now();
    print("Employee ${emp.name} checked in at ${emp.checkInTime}");
  }

  void checkOut(int employeeID) {
    final emp = teamEmp.firstWhere(
      (e) => e.id == employeeID,
      orElse: () => throw Exception("Employee ID $employeeID doesn't exist"),
    );
    emp.checkOutTime = DateTime.now();
    print("Employee ${emp.name} checked out at ${emp.checkOutTime}");
  }
}
