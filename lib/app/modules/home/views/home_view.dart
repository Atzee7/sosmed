import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile2'),
        centerTitle: false,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Image Placeholder
              GestureDetector(
                onTap: () {
                  // Do nothing, it's just a placeholder
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.camera_alt, size: 40, color: Colors.grey[700]),
                ),
              ),
              const SizedBox(height: 20),

              // First Name Field
              TextField(
                decoration: const InputDecoration(
                  labelText: 'First name',
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.updateFirstName,
              ),
              const SizedBox(height: 10),

              // Last Name Field
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Last name',
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.updateLastName,
              ),
              const SizedBox(height: 10),

              // Phone Number Field
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                onChanged: controller.updatePhoneNumber,
              ),
              const SizedBox(height: 10),

              // Location Field
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Location',
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.updateLocation,
              ),
              const SizedBox(height: 10),

              // Birthday Field
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Birthday',
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                onChanged: controller.updateBirthday,
              ),
              const SizedBox(height: 20),

              // Gender Radio Buttons
              Row(
                children: [
                  Obx(() => Radio<String>(
                    value: 'Male',
                    groupValue: controller.selectedGender.value,
                    onChanged: controller.selectGender,
                  )),
                  const Text('Male'),

                  Obx(() => Radio<String>(
                    value: 'Female',
                    groupValue: controller.selectedGender.value,
                    onChanged: controller.selectGender,
                  )),
                  const Text('Female'),

                  Obx(() => Radio<String>(
                    value: 'Other',
                    groupValue: controller.selectedGender.value,
                    onChanged: controller.selectGender,
                  )),
                  const Text('Other'),
                ],
              ),
              const SizedBox(height: 10),

              // Profile Visibility Checkbox
              Obx(() => CheckboxListTile(
                title: const Text('Visible on your profile'),
                value: controller.isProfileVisible.value,
                onChanged: controller.toggleProfileVisibility,
              )),
              const SizedBox(height: 20),

              // Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.saveProfile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700], // Similar to UI color
                    textStyle: const TextStyle(color: Colors.black),
                  ),
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
