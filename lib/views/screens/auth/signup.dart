import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petcare/core/constants/color.dart';
import 'package:petcare/core/constants/imageassets.dart';
import 'package:petcare/core/constants/routes_names.dart';
import 'package:petcare/views/widgets/auth/customtextfield.dart';
import 'package:petcare/views/widgets/auth/cutombtn1.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: Get.height * .1),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: SvgPicture.asset(AppImageAsset.bgblur),
                ),
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: Get.height * .1, horizontal: Get.width * .07),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Sign Up"),
                      const SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColor.secondaryColor,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 50,
                          ),
                        ),
                      ),
                      Text(
                        "Upload image",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      CustomTextfield(
                          hint: "First name",
                          onsave: (s) {},
                          suffixIcon: const SizedBox.shrink()),
                      CustomTextfield(
                          hint: "Last name",
                          onsave: (s) {},
                          suffixIcon: const SizedBox.shrink()),
                      CustomTextfield(
                          hint: "Email; address",
                          onsave: (s) {},
                          suffixIcon: const SizedBox.shrink()),
                      CustomTextfield(
                          hint: "Password (+8 characters)",
                          onsave: (s) {},
                          suffixIcon: const SizedBox.shrink()),
                      const SizedBox(
                        height: 10,
                      ),
                      Custombtn1(
                          padding: Get.width * .22,
                          text: "CREATE ACCOUNT",
                          onpressed: () => Get.offNamed(AppRoutesNames.addpet))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
