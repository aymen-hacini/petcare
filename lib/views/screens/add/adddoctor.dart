import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare/core/constants/color.dart';
import 'package:petcare/views/widgets/auth/customtextfield.dart';
import 'package:petcare/views/widgets/auth/cutombtn1.dart';

class Adddoctor extends StatelessWidget {
  const Adddoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: "doc",
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Joining the list"),
              centerTitle: true,
            ),
            body: Container(
                margin: EdgeInsets.symmetric(horizontal: Get.width * .1),
                height: Get.height,
                width: Get.width,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: IconButton(
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
                          ),
                          Center(
                            child: Text(
                              "Upload image",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Name",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          CustomTextfield(
                            hint: "Enter your name",
                            onsave: (s) {},
                            suffixIcon: const SizedBox.shrink(),
                            radius: 8,
                            fill: AppColor.choosepetbgcolor,
                          ),
                          Text(
                            "Clinic name",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          CustomTextfield(
                            hint: "Enter your clinic name",
                            onsave: (s) {},
                            suffixIcon: const SizedBox.shrink(),
                            radius: 8,
                            fill: AppColor.choosepetbgcolor,
                          ),
                          Text(
                            "Address",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          CustomTextfield(
                            hint: "Enter your address",
                            onsave: (s) {},
                            suffixIcon: const SizedBox.shrink(),
                            radius: 8,
                            fill: AppColor.choosepetbgcolor,
                          ),
                          Text(
                            "Phone",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          CustomTextfield(
                            hint: "Enter your phone number",
                            onsave: (s) {},
                            suffixIcon: const SizedBox.shrink(),
                            radius: 8,
                            fill: AppColor.choosepetbgcolor,
                          ),
                          Center(
                            child: Custombtn1(
                                padding: Get.width * .1,
                                text: "PUBLISH",
                                onpressed: () {}),
                          )
                        ]),
                  ),
                ))));
  }
}