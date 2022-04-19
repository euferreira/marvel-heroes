import 'package:flutter/material.dart';

class HeroComponent extends StatelessWidget {
  final String imagePath;
  final String alterEgo;
  final String name;

  const HeroComponent({
    Key? key,
    required this.imagePath,
    required this.alterEgo,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              imagePath,
            ),
            fit: BoxFit.cover,
          ),
        ),
        margin: const EdgeInsets.only(right: 10, top: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                alterEgo,
                style: Theme.of(context).primaryTextTheme.caption,
              ),
              Text(
                name,
                style: Theme.of(context).primaryTextTheme.headline3,
              ),
            ],
          ),
        ),
      );
}
