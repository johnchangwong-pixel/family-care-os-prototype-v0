import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:family_care_os/care_store.dart';
import 'package:family_care_os/models.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('default demo state creates expected alerts', () async {
    SharedPreferences.setMockInitialValues({});
    final store = await CareStore.create();

    expect(store.activeRole, Role.caregiver);
    expect(store.med, MedicationStatus.pending);
    expect(store.alerts.any((a) => a.highPriority), isTrue);
    expect(store.members.length, 3);
  });
}
