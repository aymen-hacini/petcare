import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare/core/constants/color.dart';
import 'package:petcare/core/constants/imageassets.dart';
import 'package:petcare/core/constants/routes_names.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [Icon(Icons.notifications)],
        leading: Hero(
          tag: "settings",
          child: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Get.toNamed(AppRoutesNames.settings),
          ),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * .2, vertical: Get.height * .01),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff4D8EAF)),
          child: const Text("HOME"),
        ),
      ),
      body: SafeArea(
        child: Form(
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: Get.height * .055,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (builder, index) => Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.backgroundColor),
                      width: 100,
                      height: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage(AppImageAsset.cat)),
                          Text(
                            "All",
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Searchfield(),
              const SizedBox(
                height: 20,
              ),
              DissapearedPetTitle(
                title: "Pet Disappeared",
                ontap: () => Get.toNamed(AppRoutesNames.seeallD),
              ),
              Container(
                height: Get.height * .23,
                margin: EdgeInsets.symmetric(
                    horizontal: Get.width * .05, vertical: 10),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (ctx, index) => const SizedBox(
                          width: 10,
                        ),
                    itemBuilder: (ctx, index) => InkWell(
                          onTap: () => Get.toNamed(AppRoutesNames.details),
                          child: Card(
                            color: const Color(0xA3F28F8F),
                            elevation: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(AppImageAsset.cat),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cat Phone",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
              DissapearedPetTitle(
                title: "Pet Find",
                ontap: () => Get.toNamed(AppRoutesNames.seeallF),
              ),
              Container(
                height: Get.height * .23,
                margin: EdgeInsets.symmetric(
                    horizontal: Get.width * .05, vertical: 10),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (ctx, index) => const SizedBox(
                          width: 10,
                        ),
                    itemBuilder: (ctx, index) => InkWell(
                          onTap: () =>Get.toNamed(AppRoutesNames.details),
                          child: Card(
                            color: Colors.grey,
                            elevation: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(AppImageAsset.cat),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Dog Phone",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: Get.width * .1),
                    child: FloatingActionButton(
                        heroTag: "add",
                        shape: const CircleBorder(),
                        onPressed: () => Get.toNamed(AppRoutesNames.addanimal),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffF8D629),
                                    Color(0xff4D8EAF)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(100)),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.create_outlined),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DissapearedPetTitle extends StatelessWidget {
  final String title;
  final void Function()? ontap;
  const DissapearedPetTitle({
    super.key,
    required this.title,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: ontap,
          child: Text(
            "See All",
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: "Poppins", decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}

class Searchfield extends StatelessWidget {
  const Searchfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .05,
      margin: EdgeInsets.symmetric(horizontal: Get.width * .07),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.secondaryColor),
      child: TextFormField(
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            hintText: "Search"),
      ),
    );
  }
}
