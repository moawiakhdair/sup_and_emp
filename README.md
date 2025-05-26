# Overview

The `main.dart` file serves as the entry point for a simple employee supervision system. This system allows the addition of employees and supervisors, the assignment of employees to supervisors, and the management of check-in and check-out functionalities. The code utilizes a controller to handle the operations and maintain a clear separation of concerns, which enhances the modularity and readability of the application.

---

## Imported Modules

This file imports several modules that define the controller and the role of employee and supervisor objects:

- **`controller/controller.dart`** - Provides the logic to manage employees and supervisors.
- **`models/emp.dart`** - Defines the `Employee` class.
- **`models/sup.dart`** - Defines the `Supervisor` class.
- **`models/system/Controller.dart`** - Contains the definition for the main `Controller` class handling the functionality of the system.

---

## Main Function

The main function is the starting point of the program. Here’s what happens step by step:

### Create a Controller Instance

A new instance of the `Controller` class is created. This controller helps to add and manage employees and supervisors throughout the system.

### Create Employee Instances

Two `Employee` objects, `emp1` and `emp2`, are created with names `"Moawia"` and `"Sara"`, and assigned IDs `1` and `2` respectively.

### Create Supervisor Instances

Similarly, two `Supervisor` objects, `sup1` and `sup2`, are instantiated with names `"Mr. Omar"` and `"Ms. Hala"`, assigned IDs `101` and `102` respectively.

### Add Employees to the Controller

The two created employees are added to the controller using the method `addEmployee`.

### Add Supervisors to the Controller

The two supervisors are added to the controller using the method `addSupervisor`.

### Assign Employee to Supervisor

The method `assignEmployee` is called to associate the first employee (ID `1`) with the first supervisor (ID `101`).

### Check-In Employee

Using the `checkIn` method, employee with ID `1` checks in.

### Display Employee Info

Employee details for the employee with ID `1` are retrieved and displayed using the `displayEmployeeInfo` method.

### Check-Out Employee

Finally, the employee checks out using the `checkOut` method.
