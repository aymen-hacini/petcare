import 'package:flutter/material.dart';
import 'package:petcare/core/constants/color.dart';

class ChoosePet extends StatelessWidget {
  const ChoosePet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DropdownButtonHideUnderline(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.choosepetbgcolor),
          child: DropdownButton(
            icon: const Icon(Icons.unfold_more),
            borderRadius: BorderRadius.circular(8),
            iconEnabledColor: Colors.grey[600],
            padding: const EdgeInsets.symmetric(horizontal: 16),
            items: const [
              DropdownMenuItem(
                value: "Male",
                child: Text("Cat"),
              ),
              DropdownMenuItem(
                value: "dog",
                child: Text("Dog"),
              ),
            ],
            onChanged: (val) {},
            hint: const Text("Cat/Dog"),
            isExpanded: true,
          ),
        ),
      ),
    );
  }
}

class ChooseSex extends StatelessWidget {
  const ChooseSex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DropdownButtonHideUnderline(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.choosepetbgcolor),
          child: DropdownButton(
            icon: const Icon(Icons.unfold_more),
            borderRadius: BorderRadius.circular(8),
            iconEnabledColor: Colors.grey[600],
            padding: const EdgeInsets.symmetric(horizontal: 16),
            items: const [
              DropdownMenuItem(
                value: "Male",
                child: Text("Male"),
              ),
              DropdownMenuItem(
                value: "Female",
                child: Text("Female"),
              ),
            ],
            onChanged: (val) {},
            hint: const Text("Male/Female"),
            isExpanded: true,
          ),
        ),
      ),
    );
  }
}
