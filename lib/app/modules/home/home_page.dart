import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:star_wars/app/constants/app_colors.dart';
import 'package:star_wars/app/domain/swapi/swapi.dart';
import 'package:star_wars/app/modules/home/controller/home_controller.dart';
import 'package:star_wars/app/modules/home/widgets/app_card_skeleton.dart';
import 'package:star_wars/app/modules/home/widgets/app_menu_options.dart';
import 'package:star_wars/app/modules/home/widgets/app_menu_options_skeleton.dart';
import 'package:star_wars/app/modules/home/widgets/app_people_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    // controller.init();

    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 75,
                margin: const EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://repository-images.githubusercontent.com/193877356/529de380-9f2b-11e9-8253-d0389f8b0c51")),
                ),
              ),
              Observer(builder: (_) {
                return controller.isShowSkeleton
                    ? const AppMenuOptionsSkeleton()
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 140,
                                childAspectRatio: 1,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 15),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, index) {
                          return Observer(builder: (_) {
                            return AppMenuOptions(
                              index: index,
                              indexSelectedButton: controller.optionSelected,
                              title: controller.list[index].key,
                              link: controller.list[index].url,
                              changeOptionCallback: controller.selectMenuOption,
                            );
                          });
                        });
              }),
              const SizedBox(height: 10),
              Container(
                height: 5,
                width: 65,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),

              //TODO: https://stackoverflow.com/questions/49977864/how-to-make-a-widget-fill-remaining-space-in-a-column
              Container(
                height: 300,
                child: Observer(builder: (context) {
                  return controller.isShowCardSkeleton
                      ? const AppCardSkeleton()
                      : ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: controller.listPeople.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              width: (MediaQuery.of(context).size.width - 100),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: const BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: AppPeopleDetails(
                                people: controller.listPeople[index],
                              ),
                            );
                          },
                        );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
