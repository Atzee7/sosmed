import 'package:get/get.dart';

class HomeController extends GetxController {
  var firstName = ''.obs;
  var lastName = ''.obs;
  var phoneNumber = ''.obs;
  var location = ''.obs;
  var birthday = ''.obs;

  var selectedGender = ''.obs;
  var isProfileVisible = false.obs;

  void updateFirstName(String? value) {
    firstName.value = value ?? '';
  }

  void updateLastName(String? value) {
    lastName.value = value ?? '';
  }

  void updatePhoneNumber(String? value) {
    phoneNumber.value = value ?? '';
  }

  void updateLocation(String? value) {
    location.value = value ?? '';
  }

  void updateBirthday(String? value) {
    birthday.value = value ?? '';
  }

  void selectGender(String? gender) {
    selectedGender.value = gender ?? '';
  }

  void toggleProfileVisibility(bool? value) {
    isProfileVisible.value = value ?? false;
  }

  void saveProfile() {
    print("Profile saved!");
    print("First Name: ${firstName.value}");
    print("Last Name: ${lastName.value}");
    print("Phone Number: ${phoneNumber.value}");
    print("Location: ${location.value}");
    print("Birthday: ${birthday.value}");
    print("Gender: ${selectedGender.value}");
    print("Profile Visible: ${isProfileVisible.value}");
  }
}
