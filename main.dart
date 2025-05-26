import 'controller/controller.dart';
import 'models/emp.dart';
import 'models/sup.dart';
import 'models/system/Controller.dart';

void main() {
  var controller = Controller();

  var emp1 = Employee(name: "Moawia", id: 1);
  var emp2 = Employee(name: "Sara", id: 2);

  var sup1 = Supervisor(name: "Mr. Omar", id: 101);
  var sup2 = Supervisor(name: "Ms. Hala", id: 102);

  controller.addEmployee(emp1);
  controller.addEmployee(emp2);

  controller.addSupervisor(sup1);
  controller.addSupervisor(sup2);

  controller.assignEmployee(1, 101);

  controller.checkIn(1);

  controller.displayEmployeeInfo(1);

  controller.checkOut(1);
}
