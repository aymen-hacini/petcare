import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare/views/widgets/auth/customtextfield.dart';
import 'package:petcare/views/widgets/auth/cutombtn1.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit profile",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: Get.width * .07),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: null,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              size: 40,
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "First name",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                CustomTextfield(
                  hint: "Enter your firstname",
                  onsave: (s) {},
                  suffixIcon: const SizedBox.shrink(),
                  radius: 8,
                  fill: Colors.white,
                ),
                Text(
                  "Last name",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                CustomTextfield(
                  hint: "Enter your lastname",
                  onsave: (s) {},
                  suffixIcon: const SizedBox.shrink(),
                  radius: 8,
                  fill: Colors.white,
                ),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                CustomTextfield(
                  hint: "Enter your email address",
                  onsave: (s) {},
                  suffixIcon: const SizedBox.shrink(),
                  radius: 8,
                  fill: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Custombtn1(
                      padding: Get.width * .1,
                      text: "Save changes",
                      onpressed: () {}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
