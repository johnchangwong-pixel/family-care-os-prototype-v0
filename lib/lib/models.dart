enum Role { caregiver, mother, father, child }
enum MedicationStatus { pending, completed }
enum CheckInType { safe, medicationCompleted, needAssistance }

class FamilyMember {
  const FamilyMember({required this.id, required this.name, required this.role, required this.status});
  final String id;
  final String name;
  final Role role;
  final String status;
}

class CheckIn {
  const CheckIn({required this.memberId, required this.type, required this.at});
  final String memberId;
  final CheckInType type;
  final DateTime at;
}

class Task {
  const Task({required this.id, required this.title, required this.assigneeId, this.complete = false, this.needsHelp = false});
  final String id;
  final String title;
  final String assigneeId;
  final bool complete;
  final bool needsHelp;
  Task copyWith({String? assigneeId, bool? complete}) => Task(
    id: id, title: title, assigneeId: assigneeId ?? this.assigneeId,
    complete: complete ?? this.complete, needsHelp: needsHelp,
  );
}

class Appointment {
  const Appointment({required this.memberId, required this.title, required this.when});
  final String memberId;
  final String title;
  final DateTime when;
}

class Alert {
  const Alert({required this.title, required this.detail, required this.highPriority});
  final String title;
  final String detail;
  final bool highPriority;
}
