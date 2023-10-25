import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: InkWell(
            onTap: () {
              launch('https://linktr.ee/mauaesports');
            },
            child: HeaderMenu(
              title: "Sobre Nós", press: () {
                launch('https://linktr.ee/mauaesports');
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          width: kPadding,
        ),
        Center(
          child: HeaderMenu(
            press: () {
              launch('https://linktr.ee/mauaesports');
            },
            title: "Sobre nós",
          ),
        ),
        SizedBox(
          width: kPadding,
        ),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  _MobMenuState createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {},
            title: "Menu",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              launch('https://linktr.ee/mauaesports');
            },
            title: "Sobre nós",
          ),
          SizedBox(
            height: kPadding,
          ),
        ],
      ),
    );
  }
}
