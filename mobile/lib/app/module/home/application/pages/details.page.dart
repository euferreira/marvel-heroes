import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marvel_heroes/app/module/home/application/components/movies.component.dart';
import 'package:marvel_heroes/app/module/home/application/controller/details.controller.dart';
import 'package:marvel_heroes/app/shared/theme/app.styles.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.showProgress.value
            ? const CircularProgressIndicator()
            : Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      controller.dados.value!.imagePath,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: IconButton(
                          onPressed: () => Get.back(),
                          icon: SvgPicture.asset(
                            'assets/icons/back.svg',
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppStyles.gradientBlackStart,
                              AppStyles.gradientBlackEnd
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.dados.value!.alterEgo,
                                  style: Theme.of(context).primaryTextTheme.headline3,
                                ),
                                Text(
                                  controller.dados.value!.name,
                                  style: Theme.of(context).primaryTextTheme.headline1,
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/age.svg',
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                    Text("${controller.age} anos",
                                      style: Theme.of(context).primaryTextTheme.bodyText2,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/weight.svg',
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                    Text(
                                        "${controller.dados.value!.caracteristics.weight.value}"
                                            "${controller.dados.value!.caracteristics.weight.unit}",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyText2),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/height.svg',
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                    Text(
                                      "${controller.dados.value!.caracteristics.height.value}"
                                          "${controller.dados.value!.caracteristics.height.unit}",
                                      style: Theme.of(context).primaryTextTheme.bodyText2,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/universe.svg',
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                    Text(
                                        controller.dados.value!.caracteristics.universe,
                                        style: Theme.of(context).primaryTextTheme.bodyText2)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              controller.dados.value!.biography,
                              style: Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              "Habilidades",
                              style: Theme.of(context).primaryTextTheme.headline4!.copyWith(
                                color: AppStyles.light100
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Força:',
                                        style: Theme.of(context).primaryTextTheme.caption
                                      ),
                                    ),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: controller.dados.value!.abilities.force / 100,
                                        backgroundColor: AppStyles.light100,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          'Inteligência:',
                                          style: Theme.of(context).primaryTextTheme.caption
                                      ),
                                    ),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: controller.dados.value!.abilities.intelligence / 100,
                                        backgroundColor: AppStyles.light100,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          'Agilidade:',
                                          style: Theme.of(context).primaryTextTheme.caption
                                      ),
                                    ),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: controller.dados.value!.abilities.agility / 100,
                                        backgroundColor: AppStyles.light100,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          'Resistência:',
                                          style: Theme.of(context).primaryTextTheme.caption
                                      ),
                                    ),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: controller.dados.value!.abilities.endurance / 100,
                                        backgroundColor: AppStyles.light100,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          'Velocidade:',
                                          style: Theme.of(context).primaryTextTheme.caption
                                      ),
                                    ),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: controller.dados.value!.abilities.velocity / 100,
                                        backgroundColor: AppStyles.light100,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              "Filmes",
                              style: Theme.of(context).primaryTextTheme.headline4!.copyWith(
                                  color: AppStyles.light100
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                controller.dados.value!.movies.length,
                                  (index) => MoviesComponent(imagePath: controller.dados.value!.movies[index].path),
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
      ),
    );
  }
}
