import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:marvel_heroes/app/module/home/application/components/drawer.component.dart';
import 'package:marvel_heroes/app/module/home/application/components/hero.component.dart';
import 'package:marvel_heroes/app/shared/theme/app.styles.dart';

import '../controller/home.controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            'assets/icons/marvel.svg',
            color: Theme.of(context).primaryColor,
          ),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) => IconButton(
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/search.svg'),
              onPressed: () => print('Search'),
            ),
          ],
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        ),
        drawer: const DrawerComponent(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Bem-vindo ao Marvel Heroes',
                    style: Theme.of(context).primaryTextTheme.button,
                  ),
                  subtitle: Text(
                    'Escolha o seu personagem',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipOval(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppStyles.gradientBlueStart,
                                  AppStyles.gradientBlueEnd
                                ],
                              ),
                            ),
                            child: SvgPicture.asset('assets/icons/hero.svg',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipOval(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppStyles.gradientRedStart,
                                  AppStyles.gradientRedEnd
                                ],
                              ),
                            ),
                            child: SvgPicture.asset('assets/icons/villain.svg',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipOval(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppStyles.gradientPurpleStart,
                                  AppStyles.gradientPurpleEnd
                                ],
                              ),
                            ),
                            child: SvgPicture.asset('assets/icons/antihero.svg',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipOval(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppStyles.gradientGreenStart,
                                  AppStyles.gradientGreenEnd
                                ],
                              ),
                            ),
                            child: SvgPicture.asset('assets/icons/alien.svg',
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipOval(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppStyles.gradientPinkStart,
                                  AppStyles.gradientPinkEnd
                                ],
                              ),
                            ),
                            child: SvgPicture.asset('assets/icons/human.svg',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Heróis',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          Text(
                            'Ver tudo',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.showProgress.value
                            ? const LinearProgressIndicator()
                            : SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    controller.heroesList.length,
                                    (index) => GestureDetector(
                                      onTap: () => Get.toNamed('/details', arguments: controller.heroesList[index]),
                                      child: HeroComponent(
                                          imagePath: controller.heroesList[index].imagePath,
                                          alterEgo: controller.heroesList[index].alterEgo,
                                          name: controller.heroesList[index].name,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vilões',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          Text(
                            'Ver tudo',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.showProgress.value
                            ? const LinearProgressIndicator()
                            : SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    controller.villainsList.length,
                                    (index) => GestureDetector(
                                      onTap: () => Get.toNamed('/details', arguments: controller.villainsList[index]),
                                      child: HeroComponent(
                                        imagePath: controller.villainsList[index].imagePath,
                                        alterEgo: controller.villainsList[index].alterEgo,
                                        name: controller.villainsList[index].name,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Anti-heróis',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          Text(
                            'Ver tudo',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.showProgress.value
                            ? const LinearProgressIndicator()
                            : SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    controller.antiHeroesList.length,
                                    (index) => GestureDetector(
                                      onTap: () => Get.toNamed('/details', arguments: controller.antiHeroesList[index]),
                                      child: HeroComponent(
                                        imagePath: controller.antiHeroesList[index].imagePath,
                                        alterEgo: controller.antiHeroesList[index].alterEgo,
                                        name: controller.antiHeroesList[index].name,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Alienígenas',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          Text(
                            'Ver tudo',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.showProgress.value
                            ? const LinearProgressIndicator()
                            : SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    controller.aliensList.length,
                                    (index) => GestureDetector(
                                      onTap: () => Get.toNamed('/details', arguments: controller.aliensList[index]),
                                      child: HeroComponent(
                                        imagePath: controller.aliensList[index].imagePath,
                                        alterEgo: controller.aliensList[index].alterEgo,
                                        name: controller.aliensList[index].name,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Humanos',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          Text(
                            'Ver tudo',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.showProgress.value
                            ? const LinearProgressIndicator()
                            : SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    controller.humansList.length,
                                    (index) => GestureDetector(
                                      onTap: () => Get.toNamed('/details', arguments: controller.humansList[index]),
                                      child: HeroComponent(
                                        imagePath: controller.humansList[index].imagePath,
                                        alterEgo: controller.humansList[index].alterEgo,
                                        name: controller.humansList[index].name,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
